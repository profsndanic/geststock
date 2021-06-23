<?php
require('config.php');
?>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="ajouter.css" type="text/css">
  <title>Scan d'un code barre</title>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container"> 
	 <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-circle-o"></i>
        <b> GestionDeStock</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar11">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar11">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item"> <a class="nav-link" href="interface.php"> <i class="fa fa-lg fa-list-ul"></i> Inventaire</a> </li>
          <li class="nav-item"> <a class="nav-link" href="scan.php"> <i class="fa fa-lg fa-barcode"></i> Scanner un objet<br></a> </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <?php echo $_SESSION['username'];?> </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> 
				<a class="dropdown-item" href="logout.php">Logout</a> 
			</div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center bg-dark">
    <div class="container">
      <div class="row">
        <div class="mx-auto">
          <h1 class="text-light">Scan d'un objet</h1>
          <h1><font color="green" id="barcode"></font></h1>
		 	<?php
				if(isset($ok)){
					echo '<h1><font color="green">'.$ok."</font></h1>";
				}else {
					if(isset($erreur)){
						echo '<h1><font color="red">'.$erreur."</font></h1>";
					}
				}
			?>
      	<script type="text/javascript" src="js/html5-qrcode.min.js"></script>
      	<div id="qr-reader" style="width: 600px"></div>
      
      	<script type="text/javascript">
        	function onScanSuccess(decodedText, decodedResult) {
            	document.getElementById("barcode").innerHTML="Code barre:" +decodedText;
              window.location.href = "ajouter.php?code="+decodedText;
              scanRes.value=decodedText;
              console.log(`Code scanned = ${decodedText}`, decodedResult);
        	}
          function onScanFailure(error) {
            console.warn(`Code scan error = ${error}`);
          }

        	var html5QrcodeScanner = new Html5QrcodeScanner(
            	"qr-reader", { fps: 10, qrbox: 250 });
        	html5QrcodeScanner.render(onScanSuccess);
      	</script>
        <form name="formscan" method="POST" action="scan.php" autocomplete="off">
        <div class="form-group">
        <label>Scan:</label>
        <input type="text" id="scanRes" name="scanRes" class="form-control">
        </div>
        <div ></div>
        <button class="btn btn-info" name="sub" type="submit">Match</button>
        </form>
<?php
require('config.php');

 if (isset($_POST['sub'])) {
  $sca=trim($_POST['scanRes'],"");   
  $flag=0;
  $proname="";
    $req ="SELECT * FROM `objets`";
    $res2=mysqli_query($con, $req);
  while($row=mysqli_fetch_array($res2)){
          if($row['barcode'] == $sca){
            $flag=1;
            $proname=$row['modele'];
            $prodesc=$row['description'];
          }

      
   }if ($flag==1) {
            $newpage = "Location: result.php?code=".$sca;
            header($newpage);
            return;
   }
   else{
        $newpage = "Location: ajouter.php?code=".$sca;
        header($newpage);
        return;
      }
    
}
mysqli_close($con);
 
?> 
   
   <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
