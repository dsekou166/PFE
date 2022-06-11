<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
     <title>E-vote Intec-Sup</title>
     <style>
  .toggle.ios, .toggle-on.ios, .toggle-off.ios { border-radius: 20px; }
  .toggle.ios .toggle-handle { border-radius: 20px; }
</style>
</head>
<body>
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
      <div class="col-md-10 offset-md-1">
        <table class="table table-bordered">
            <tr>
                <th>Etat</th>
                <th>Id Electeur</th>
                <th>Nom Electeurs</th>
                <th>Prenom Electeur</th>
                <th>Matricule</th>
                <th>Site</th>
                <th>Filiere</th>
                <th>Vote</th>
               
            </tr>   
            <tr>
                <?php
                  require_once "model/electeur.php";
                  $liste_electeur=Electeur::Afficher_electeur();
                  foreach($liste_electeur as $ele)
                  {
                   ?><tr>
                     <td>
                     <?php if($ele['etat']=="actif")
                        {?>
                          <input type="checkbox" checked data-toggle="toggle" data-style="ios" class="togglebtn">
                          <?php
                        }else{ ?>
                          <input type="checkbox"  data-toggle="toggle" data-style="ios" id="toggle-off" class="togglebtn">
                          <?php
                        } ?>
                        </td>
                      <td><?php echo $ele['id_electeur'] ?></td>
                      <td><?php echo $ele['nom_electeur'] ?></td> 
                      <td><?php echo $ele['prenom_electeur'] ?></td> 
                      <td><?php echo $ele['num_electeur'] ?></td>
                      <td><?php echo $ele['lieu_nais'] ?></td>
                      <td><?php echo $ele['adress'] ?></td>

                      <?php
                        if($ele['status_vote']==false)
                        {
                          echo "<td class='bg-danger text-light'>Non voté</td>";
                        }else{
                          echo "<td class='bg-success text-light'>Voté</td>";
                        }
                      ?>
                     
                  </tr>
              <?php
                  }

                ?>
            </tr>     
       </table>
      </div>
  </div>

  <script
			  src="https://code.jquery.com/jquery-3.6.0.min.js"
			  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
			  crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
  <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script>
function toggleOff() {
    $('#toggle-off').bootstrapToggle('off')  
  }
  </script>
  <script>
  $(function() {
    $('.togglebtn').change(function() {
     var id1 = $(this).closest('tr').children('td:eq(1)').text();
     var etat1 = $(this).prop('checked')
    //console.log( )
    $.post('changeetat.php',
    {
        id: id1,
        etat: etat1
    }, function(data) {
        alert(data);
        location.reload();
});
    })
  })
</script>
</body>
</html>