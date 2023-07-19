<?php
include 'inc/header.php';
Session::CheckSession();
$sId =  Session::get('roleid');
if ($sId === '1') { ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['addUser'])) {

  $userAdd = $users->addNewUserByAdmin($_POST);
}

if (isset($userAdd)) {
  echo $userAdd;
}


 ?>


 <div class="card ">
   <div class="card-header">
          <h3 class='text-center'>Ajouter nouveau patient</h3>
        </div>
        <div class="cad-body">



            <div style="width:600px; margin:0px auto">

            <form class="" action="" method="post">
            <div class="form-group pt-3">
                  <label for="num">Numéro de Serie :</label>
                  <input type="number" name="num"  class="form-control">
                </div>
                <div class="form-group pt-3">
                  <label for="name">Nom :</label>
                  <input type="text" name="name"  class="form-control">
                </div>
                <div class="form-group pt-3">
                  <label for="name">Prénom :</label>
                  <input type="text" name="fname"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" name="username"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="email">Email :</label>
                  <input type="email" name="email"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="mobile">Télephone :</label>
                  <input type="text" name="mobile"  class="form-control">
                </div>
                <div class="form-group">
                  <div class="form-group">
                    <label for="sel1">Genre :</label>
                    <select class="form-control" name="genre" id="genre">
                      <option value="Masculin">Masculin</option>
                      <option value="Féminin">Féminin</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label for="ville">Ville :</label>
                  <input type="text" name="ville"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="poids">Poids :</label>
                  <input type="number" step="0.01" name="poids"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="taille">Taille :</label>
                  <input type="number" step="0.01" name="taille"  class="form-control">
                </div>
                <div class="form-group">
                  <label for="password">Mot de Passe pour patient :</label>
                  <input type="password" name="password" class="form-control">
                </div>
                <div class="form-group">
                  <div class="form-group">
                    <label for="sel1">Select user Role :</label>
                    <select class="form-control" name="roleid" id="roleid">
                      <option value="1">Admin</option>
                      <option value="2">Editor</option>
                      <option value="3">Patient</option>

                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <button type="submit" name="addUser" class="btn btn-success">Register</button>
                </div>


            </form>
          </div>


        </div>
      </div>

<?php
}else{

  header('Location:index.php');



}
 ?>

  <?php
  include 'inc/footer.php';

  ?>
