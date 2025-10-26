<?php include('connect.php')  ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style1.css" rel="stylesheet">

</head>
<body>
    

 <!--<section id="team" class="team section-bg">
      <div class="container aos-init aos-animate" data-aos="fade-up">

        <div class="section-title">
          <h2>Login Admin / User</h2>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
        
          <center>
          <form action="login.php" method="post" role="form" class="php-email-form">
              <div class="row">
                
                <div class="col form-group mb-3">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required="">
                </div>
              </div>
              <div class="form-group mb-3">
                <input type="text" class="form-control" name="password" id="password" placeholder="your Password" required="">
              </div>

              <div class="text-center">
                <button type="submit" name="login"  class="btn btn-primary">Login</button>
                <a href="register.php" class="btn btn-primary">Register</a>
              
              </div>
           
            </form>
          </center>
         
          </div>

        

        </div>

      </div>
</section> -->



<div class="wrapper">
    <!--  <div class="logo">
            <img src="login.jpg "  height="20" width="30" alt="">
        </div> -->
        <div class="text-center mt-4 name">
            Login Here!
        </div>

      
        <form  action="login.php" method="post" role="form" class="p-3 mt-3" >
            <div class="form-field d-flex align-items-center"  class="col form-group mb-3">
                <span class="far fa-user"></span>
                <input type="text" name="email" id="email" placeholder="Email">
            </div>
            <div class="form-field d-flex align-items-center" >
                <span class="fas fa-key"></span>
                <input type="password" name="password" id="password" placeholder="Password">
            </div>
            <button  type="submit" name="login" class="btn mt-3">Login</button>
        </form>
        <div class="text-center fs-6" >
              Don't have any account then <a href="register.php">Register</a>
        </div>
    </div>
</body>
</html>
<?php

if(isset($_POST['login'])){

  $email    = $_POST['email'];
  $password = $_POST['password'];

  $sql = "SELECT * FROM `users` WHERE email = '$email' and password = '$password' ";

  $rs = mysqli_query($con, $sql);
  
  if(mysqli_num_rows($rs) > 0){
     $data = mysqli_fetch_array($rs);

     $role = $data['roteype'];

     $_SESSION['uid'] = $data['userid'];
     $_SESSION['type'] = $role;

     if($role == 1){
      echo "<script> alert('admin login successfully!!') </script>";
      echo "<script> window.location.href='admin/dashboard.php';  </script>";
     }
     else if($role == 2){
      echo "<script> alert('user login successfully!!') </script>";
      echo "<script> window.location.href='index.php';  </script>";
     }

  }else{
    echo "<script> alert('Invalid email & password') </script>";
  }

}


?>