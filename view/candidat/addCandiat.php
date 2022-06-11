<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/css1.css">
    <title>E-vote Intec-Sup</title>
</head>
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
<body>
     <div class="container">
         <div class="row">
             <div class="col-md-6 offset-md-3" style="box-shadow: 1px 1px 4px 0 rgba(0,0,0,.8); padding:20px">
             <div class="card" style="margin-top:10px;">
                <div class="card-header bg-primary">
                   Formulaire d'ajout de Candidat
                </div>
                <div class="card-body">
                      <form action="controller/candidatController.php" method="post">
                          <div class="form-group">
                             <label class="control-label">Nom Canditat</label>
                             <input name="nom_candidat" type="text" class="form-control"  required placeholder="entrez le nom du candidat">
                          </div>
                          <div class="form-group mt-3">
                             <label class="control-label">Nom du Partie</label>
                             <input name="nom_partie" type="text" class="form-control" required placeholder="Nom du Partie">
                          </div>
                          <div class="form-group mt-3">
                             <label class="control-label">Photo</label>
                             <input name="photo_parti" type="text" class="form-control" required placeholder="photo du Partie">
                          </div>
                          <div class="form-group mt-3">
                              <button type="submit" class="btn btn-primary" name="btn_valider_candidat">Valider</button>
                              <button type="submit" class="btn btn-danger" name="">Annuler</button>

                            </div>
                      </form>
                </div>
                </div>
             </div>
         </div>
     </div>
</body>
</html>