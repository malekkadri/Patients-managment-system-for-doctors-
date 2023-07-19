<?php
include 'inc/header.php';
Session::CheckSession();

if (isset($_GET['id'])) {
  $userid = preg_replace('/[^a-zA-Z0-9-]/', '', (int)$_GET['id']);
}

$getUinfo = $users->getUserInfoById($userid);
if (!$getUinfo) {
  header('Location:index.php');
  exit();
}
?>

<div class="card">
  <div class="card-header">
    <h3>User Profile <span class="float-right"> <a href="index.php" class="btn btn-primary">Back</a> </h3>
  </div>
  <div class="card-body">
    <div style="width:600px; margin:0px auto">
      <div class="form-group">
        <label for="name">Numéro de Série : </label>
        <p><?php echo $getUinfo->num; ?></p>
      </div>
      <div class="form-group">
        <label for="name">Nom : </label>
        <p><?php echo $getUinfo->name; ?></p>
      </div>
      <div class="form-group">
        <label for="name">Prénom : </label>
        <p><?php echo $getUinfo->fname; ?></p>
      </div>
      <div class="form-group">
        <label for="username">Username : </label>
        <p><?php echo $getUinfo->username; ?></p>
      </div>
      <div class="form-group">
        <label for="email">Email : </label>
        <p><?php echo $getUinfo->email; ?></p>
      </div>
      <div class="form-group">
        <label for="mobile">Télephone : </label>
        <p><?php echo $getUinfo->mobile; ?></p>
      </div>
      <div class="form-group">
        <label for="genre">Genre : </label>
        <p><?php echo $getUinfo->genre; ?></p>
      </div>
      <div class="form-group">
        <label for="ville">Ville : </label>
        <p><?php echo $getUinfo->ville; ?></p>
      </div>
      <div class="form-group">
        <label for="poids">Poids : </label>
        <p><?php echo $getUinfo->poids; ?></p>
      </div>
      <div class="form-group">
        <label for="taille">Taille : </label>
        <p><?php echo $getUinfo->taille; ?></p>
      </div>

      <?php if (Session::get("roleid") == '1') { ?>
        <div class="form-group">
          <label for="roleid">Role : </label>
          <?php
          $role = "";
          if ($getUinfo->roleid == '1') {
            $role = "Admin";
          } elseif ($getUinfo->roleid == '2') {
            $role = "Editor";
          } elseif ($getUinfo->roleid == '3') {
            $role = "Patient";
          }
          ?>
          <p><?php echo $role; ?></p>
        </div>
      <?php } ?>

      <?php if (Session::get("id") == $getUinfo->id || Session::get("roleid") == '1') { ?>
       
      <?php } ?>
    </div>
  </div>
</div>

<?php
include 'inc/footer.php';
?>
