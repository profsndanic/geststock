<?php
require('config.php');
if (isset( $_GET[ 'code' ] )) {
  $barcode = $_GET['code'];
}

if(isset($_POST['AjouterObjet'])){
	if($barcode != null AND $_POST['mar'] != null AND $_POST['typ'] != null AND $_POST['mod'] != null AND $_POST['desc'] != null){
			$id = $barcode;
			$marque = htmlspecialchars($_POST['mar']);
			$type = htmlspecialchars($_POST['typ']);
			$modele = htmlspecialchars($_POST['mod']);
			$description = htmlspecialchars($_POST['desc']);
			$stock = htmlspecialchars($_POST['stock']);
			$comment = htmlspecialchars($_POST['info']);

				$insertobj = $bdd->prepare("INSERT INTO objets(barcode, type, modele, marque, description, instock, quantity, comment) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
				$insertobj->execute(array($id, $marque, $type, $modele, $description, $stock, 1, $comment));
				$ok = "L'objet a bien été ajouté";
	 }else {
	 	$erreur = "Vous devez remplir tout les champs";
	 }
}
?>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="ajouter.css" type="text/css">
  <title>Ajouter un objet au stock</title>
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
          <h1 class="text-light">Creation d'un objet dans le stock</h1>
          <h1><font color="green" id="IdMik"></font></h1>
		 	<?php
				if(isset($ok)){
					echo '<h1><font color="green">'.$ok."</font></h1>";
				}else {
					if(isset($erreur)){
						echo '<h1><font color="red">'.$erreur."</font></h1>";
					}
				}
			?>
     	<form method="POST" class="text-left">
         	<div class="form-group">
					<label for="form16" class="text-light">Type</label>
					<input type="text" name="typ" class="form-control" id="typ" placeholder="Access Point">
					</div>
					<div class="form-group">
					<label for="form16" class="text-light">Marque</label>
					<input type="text" name="mar" class="form-control" id="mar" placeholder="Netgear">
					</div>
		            <div class="form-group">
					<label for="form16" class="text-light">Modèle</label>
					<input type="text" name="mod" class="form-control" id="mod" placeholder="WG602">
					</div>
					<div class="form-group">
					<label for="form16" class="text-light">Description</label>
					<input type="text" name="desc" class="form-control" id="desc" placeholder="Netgear Wireless-G 54 Access Point WG602">
					</div>
					<div class="form-group">
					<label for="form16" class="text-light">Commentaires</label> 
					<input type="text" name="info" class="form-control" id="info" placeholder="Info supplémentaire">
					</div>

					<div class="form-group">
					<label for="form16" class="text-light">Objet disponible:</label>
					<div>
		  			<input type="radio" id="IsStocked" name="stock" value="1" checked>
		  			<label for="IsStocked" class="text-light">En magasin</label>
					</div>
					<div>
		  			<input type="radio" id="IsNotStocked" name="stock" value="0">
		  			<label for="IsNotStocked" class="text-light">Hors magasin</label>
					</div>
					</div>
					
					<div class="form-group">
					 
					<?php	
						if (isset($barcode))
							{
								echo '<label for="form17" class="text-light">Code barre: '.$barcode.'</label><br/>';		
                            }
							else
							{
								echo '<label for="form17" class="text-light">Code barre: </label><br/>';		
								//echo '<input type="text" name="id" class="form-control" id="id" value="123">';  
                                echo '<a class="btn btn-primary" href="scan.php">Lancer le scanner</a><br/>';		
							}
					?>
					
					</div>
					<button type="submit" name="AjouterObjet" class="btn btn-primary">Ajouter l'objet au stock</button>      		  
 			</form>
   
   <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
