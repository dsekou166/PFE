<?php include 'view/partager/cdt-header.php';?>
<div class="container">
<div class="row">
<div class="col-md-12 ">
        <form method='POST' action='controller/votecontroller.php'> 
<div class="row">
        <?php             
            foreach($listeCandidat as $ele){
         ?>   
        <div class="col-md-4">
            <div class="card border-primary mb-3" style="max-width: 20rem;">
                <div class="card-header"><?php echo $ele['nom_candidat'] ?> </div>
                <div class="card-header"><?php echo $ele['nom_partie'] ?>  </div>
                <div class="card-body text-primary">
                   <h5 class="card-title"><img src="controller/candidats/<?php echo $ele['photo_parti'];?>" class="img-fluid taille" ></h5>
                   <button class="btn btn-primary" name="choix_vote" value="<?php echo $ele['id_candidat']; ?>" >VOTER</button>
               </div>
            </div>
         </div>
         <style>
            .taille{
                width: 320px;
                height: 250px;
            }
         </style>
        <?php    
             }
        ?>  
            </div>
      </form>      
        </div>
    </div>
</div>
<script> src="assets/bootstrap-5.2.0/js/bootstrap.js"</script>
<script> src="assets/bootstrap-5.2.0/js/jquery.js"</script>
 <!-- ======= Footer ======= -->
 <?php include 'view/partager/footer.php';?>