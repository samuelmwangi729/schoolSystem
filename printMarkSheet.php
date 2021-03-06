<?php
error_reporting(0);
session_start();
if(isset($_SESSION['role'])){
  $_SESSION['class']=$_POST['class'];
  $_SESSION['stream']=$_POST['stream'];
  require_once('Database.php');
  $db=new Database();
	include('include/fpdf.php');
	class myClass extends FPDF{
    public $angle;
    public function Header(){
      $database=new Database();
      $details=$database->getSchool();
      foreach ($details as $key) {
        $this->SetFont('Arial','B','70');
        if($database->checkWatermark()){
          $this->watermark($key->sName,20,11);
        }else{
          continue;
        }
        $this->SetFont('Arial','B','10');
      }

    }
    function watermark($text,$angle,$start){
      $this->SetTextColor(255,200,233);
      $this->Rotate($angle,20,200);
      $this->Text($start,190,$text);
      $this->Rotate(0);
    }
    function Rotate($angle,$x=-1,$y=-1)
    {
      if($x==-1)
        $x=$this->x;
      if($y==-1)
        $y=$this->y;
      if($this->angle!=0)
        $this->_out('Q');
      $this->angle=$angle;
      if($angle!=0)
      {
        $angle*=M_PI/180;
        $c=cos($angle);
        $s=sin($angle);
        $cx=$x*$this->k;
        $cy=($this->h-$y)*$this->k;
        $this->_out(sprintf('q %.2F %.2F %.2F %.2F %.2F %.2F cm 1 0 0 1 %.2F %.2F cm',$c,$s,-$s,$c,$cx,$cy,-$cx,-$cy));
      }
    }
    function _endpage()
    {
      if($this->angle!=0)
      {
        $this->angle=0;
        $this->_out('Q');
      }
      parent::_endpage();
    }
		function head($db,$class,$stream){
      $this->SetFont('Arial','',10);
      $detail=$db->getSchool();
      foreach($detail as $key){
        $this->Image('assets/images/'.$key->Image,40,10,0,25);
        $this->SetFont('Courier','B','20');
        $this->Cell(400,20,$key->sName,0,0,'C');
        $this->Ln(15);
        $this->SetFont('Courier','B','10');
        $this->Cell(400,5,"Tel :".$key->Phone,0,0,'C');
        $this->Ln();
        $this->SetFont('Courier','B','10');
        $this->Cell(400,5,"P.O.Box ".$key->pBox." ".$key->pCode." ".$key->pCity." Kenya",0,0,'C');
        $this->Ln(5);
        $this->SetFont('Arial','B','10');
				$this->Cell(400,5,"Form ".$class." ".$stream." Students MarkSheet",0,0,'C');
				$this->Ln(10);
      }
		}
		function footer(){
			$this->SetY(-15);
			$this->SetFont('Arial','','10');
      $this->Cell(0,10,'=======================================================================================',0,0);
      $this->Ln(3);
			$this->Cell(0,10,'The School holds the right to edit the contents of this Document when necessary',0,0);
			$this->SetX(-40);
      $this->Ln();
      $this->SetTextColor(125,125,125);
			$this->Cell(0,0,'Generated By '.$_SESSION['role'],0,0);
		}
		function headerTable(){
			$this->SetFont('courier','IB',9);
			$this->Cell(10,10,'S/N',1,0,'C');
			$this->Cell(10,10,'Reg',1,0,'C');
			$this->Cell(60,10,'Names',1,0,'L');
      $database=new Database();
      $database->query("SELECT * FROM subject WHERE status=:status");
      $database->bind(':status',1);
      $subject=$database->resultSet();
      foreach ($subject as $key) {
       $this->Cell(30,10,$key->subjectAbbr,1,0,'C');
      }
			$this->Ln();
		}
		function viewTable($db){
			$this->SetFont('Arial','B',8);
      if($_SESSION['stream']=="All Streams"){
        $db->query("SELECT * FROM student WHERE class=:class  ORDER BY regNo ASC");
        $db->bind(':class',$_SESSION['class']);
        $results=$db->resultSet();
      }else{
        $db->query("SELECT * FROM student WHERE class=:class AND stream=:stream ORDER BY regNo ASC");
        $db->bind(':class',$_SESSION['class']);
        $db->bind(':stream',$_SESSION['stream']);
        $results=$db->resultSet();
      }
      $total=0;
      $count=1;
      foreach ($results as $data) {
        	$this->SetFont('courier','IB',9);
				$this->Cell(10,10,$count,1,0,'C');
				$this->Cell(10,10,$data->regNo,1,0,'C');
				$this->Cell(60,10,$data->names,1,0,'L');
        $db->query("SELECT * FROM subject WHERE status=:status");
        $db->bind(':status',1);
        $subject=$db->resultSet();
        foreach ($subject as $key) {
         $this->Cell(30,10,"",1,0,'C');
        }
        $this->Ln();
        $total=$total+1;
        $count=$count+1;
			}
      	$this->Ln();
      $this->SetTextColor(0,0,0);
      $this->Cell(250,10,"Total ",0,0,'C');
      $this->Cell(95,10,"===========",0,0,'C');
      $this->Ln(3);
      $this->Cell(250,10,"",0,0,'C');
      $this->Cell(95,10,$total." Students",0,0,'C');
      $this->Ln(3);
      $this->Cell(250,10," ",0,0,'C');
      $this->Cell(95,10,"===========",0,0,'C');
		}
	}
	$pdf=new myClass();
	$pdf->AliasNbPages();
	  $pdf->AddPage('l','A3',0);
	$pdf->head($db,$_SESSION['class'],$_SESSION['stream']);
	$pdf->headerTable();
	$pdf->viewTable($db);
	$pdf->output();
}else{  header("Location: index.php");}
?>
