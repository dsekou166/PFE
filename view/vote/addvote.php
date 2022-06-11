<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/css1.css">
    <title>E-vote Intec Sup</title>
</head>
<header>
<nav class="navbar navbar-expand-lg  shadow-lg p-3 mb-5 rounded">
  <div class="container-fluid">
  <a class="navbar-brand" href="?page=Admin_connect"  style="color:black; font-weight:bolder"><img src="111.png" alt="" width="200" height="200" href="?page=connexion"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon bg-dark"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarScroll" >
      <ul class="navbar-nav  my-2 my-lg-0 " style="--bs-scroll-height: 100px;">
          <li><a href="contact/index.php" style="text-decoration:none;margin:5px;color:black; ">VOS SUGGESTION</a></li>
          <li><a href="contact/aide.php" style="text-decoration:none;margin:5px;color:black; ">AIDE POUR VOTE</a></li>
          <li><a href="team\contact.php" style="text-decoration:none;margin:5px;color:black; ">CONTACT</a></li>
          <li><a href="view\electeur\mdp_change.php" style="text-decoration:none;margin:5px;color:black; ">c_mdp</a></li>
          <li><a href="?page=connexion&deconnexion" style="text-decoration:none;margin:5px;color:black; ">DECONNEXION</a></li>
      </ul>
    </div>
  </div>
</nav>
</header>
<body>
<div class="container">
<div class="row">
<div class="col-md-12 ">
        <form method='POST' action='controller/votecontroller.php'> 
<div class="row">
        <?php             
            foreach($listeCandidat as $ele){
         ?>   
        <div class="col-md-4">
            <div class="card border-primary mb-3" style="max-width: 18rem;">
                <div class="card-header"><?php echo $ele['nom_candidat'] ?> </div>
                <div class="card-header"><?php echo $ele['nom_partie'] ?>  </div>
                <div class="card-body text-primary">
                   <h5 class="card-title"><img src="<?php echo $ele['photo_parti'];?>" class="img-fluid"></h5>
                   <p1 class="card-text"> <input type="radio" style="width:30px; height:30px;margin-right:60px;margin-top:10px;" name="choix_vote" value="<?php echo $ele['id_candidat']; ?>"></p1>
                   <button  type="submit" name="btn_vote" class="btn btn-primary">voter</button>
               </div>
            </div>
         </div>
        <?php    
             }
        ?>  
            </div>
      </form>      
        </div>
    </div>
</div>
</body>
</html>