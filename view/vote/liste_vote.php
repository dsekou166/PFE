<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/css1.css">
   <title>Document</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>     
<header>
<nav class="navbar navbar-expand-lg  shadow-lg p-3 mb-5 rounded">
  <div class="container-fluid">
    <a class="navbar-brand" href="?page=Admin_connect"  style="color:black; font-weight:bolder"><img src="111.png" alt="" width="200" height="200" href="?page=connexion"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon bg-dark"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarScroll" >
      <ul class="navbar-nav  my-2 my-lg-0 " style="--bs-scroll-height: 100px;">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="scrolDrop" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="text-decoration:none;margin:5px;color:black">
          ESPACE VOTE
          </a>
          <ul class="dropdown-menu" aria-labelledby="scrolDrop">
            <li><a class="dropdown-item" href="?page=addvote">VOTER</a></li>
            <li><a class="dropdown-item" href="?page=liste_vote">LISTE DE VOTE</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="text-decoration:none;margin:5px;color:black">
            CANDIDAT
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="?page=addCandidat">AJOUTER CANDIDAT</a></li>
            <li><a class="dropdown-item" href="?page=listCandidat">LISTE DES CANDIDAT</a></li>
          </ul>
        </li>
        <li  class="nav-item">
          <a class="nav-link" href="?page=inscription" style="text-decoration:none;margin:5px;color:black; ">AJOUTER ELECTEUR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=les_resultat" style="text-decoration:none;margin:5px;color:black">RESULTATS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link "  href="?page=listeElecteur" style="text-decoration:none;margin:5px;color:black">ELECTEUR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link "  href="?page=connexion&deconnexion" style="text-decoration:none;margin:5px;color:black">DECONNEXION</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</header>
  <div class="container">
      <div class="row">
      <div class="col-md-10 offset-md-1" style="margin-top:80px">
      <div class="panel-heading bg-primary">Liste des Vote</div>
			<div class="panel-body">
				<table class="table table-bordered table-striped">
            
            <thead>
                <tr>
                  <th><h1>Numero vote</h1></th>
                  <th><h1>Candidat</h1></th>
                  <th><h1>Electeur</h1></th>
                  <th><h1>Numero electeur</h1></th>
                  <th><h1>Date de naissance</h1></th>
                  <th><h1>site</h1></th>
                  <th><h1>Filiere</h1></th>
                </tr>
	</thead>  
  
  <tbody>
            <tr>
                <?php
                  require_once "model/vote.php";
                  require_once "model/electeur.php";
                  $liste_vote=Vote::listeVote();
                  foreach($liste_vote as $vote){
                    $Electeur=Electeur::ElecteurByID($vote['id_electeur']);
                    
                    echo"<tr>
                            <td>$vote[id_vote]</td> 
                            <td>$vote[nom_candidat]</td> 
                            <td>".$Electeur[0]['prenom_electeur']." ".$Electeur[0]['nom_electeur']."</td>
                            <td>".$Electeur[0]['num_electeur']."</td> 
                            <td>".$Electeur[0]['date_nais']."</td> 
                            <td>".$Electeur[0]['lieu_nais']."</td> 
                            <td>".$Electeur[0]['adress']."</td>
                      </tr>";

                  }

                ?>
            </tr>
            </tbody>     
       </table>
       </div>
      </div>
   </div>
  </div>
  <script  src="css/script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

 
</body>
</html>


