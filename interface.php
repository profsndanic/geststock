<?php
require('config.php');

if (isset( $_SESSION[ 'id' ] ) && $_SESSION['id'] > 0) {
    $id = $_SESSION['id'];
	$requser = $bdd->prepare("SELECT * FROM membre WHERE `id` = ? ");
	$requser->execute(array($id));
	$userinfo = $requser->fetch();

?>

<html>
<!--  TODO : Dark Theme -->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-circle-o"></i>
        <b> GestionDeStock</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar11">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar11">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active"> <a class="nav-link" href="interface.php"><i class="fa fa-lg fa-list-ul"></i> Inventaire</a> </li>
          <?php
			      /*if($userinfo['admin'] = 1){ ?>
              <li class="nav-item"> <a class="nav-link" href="ajouter.php"> <i class="fa fa-lg fa-plus"></i> Ajouter un objet</a> </li>
			      <?php }else{} */?>
          <li class="nav-item"> <a class="nav-link" href="scan.php"> <i class="fa fa-lg fa-barcode"></i> Scanner un objet<br></a> </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <?php echo $_SESSION['username'];?> </a> 
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> 
				<a class="dropdown-item" href="logout.php">Logout</a> 
			</div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  <div class="py-5">
  <!--  TODO : Image d'ariere plan -->
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <form method="POST" action="interface.php" autocomplete="off">
          <div class="form-group">
            <label>Filtre sur type:</label>
            <input type="text" id="no" name="no" class="form-control" required>
          </div>
          <div ></div>
          <button class="btn btn-info" name="sub" type="submit">Match</button>

          <div class="table-responsive">
            <table class="table table-bordered ">
              <thead class="thead-dark">
                <tr>
                  <th>Type</th>
                  <th>Modèle</th>
                  <th>Description</th>
                  <th>Code barre</th>
				          <th>En stock ?</th>
                  <th>Plus d'info</th>
                </tr>
              </thead>
              <tbody>
                <?php
                  if (isset( $_POST[ 'no' ] )) { 
                    $type = trim($_POST['no'],"");
                    $req = $bdd->query('SELECT * FROM objets WHERE type =\'' . $type . '\'');
                  }
                  else{
                    $req = $bdd->query('SELECT * FROM objets');
                  }
                    while($row = $req->fetch()){ ?>
    				        <td><?php echo $row['type']; ?></td>
                    <td><?php echo $row['modele']; ?></td>
                    <td><?php echo $row['description']; ?></td>
                    <td><?php echo $row['barcode']; ?></td>
                    <td><?php if($row['instock'] == 1){
                           echo "Oui";
                        }else{
                           echo "Non";
                        }?>
                </td>
        <td><?php echo '<a class="btn btn-info" href="result.php?code='.$row['barcode'].'">In/Out</a><br/>'; ?></td>
        </tr>
        <?php
        }
        $req->closeCursor();
        ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>

</html>

<?php
}else{

header("Location: index.php");

}?>
