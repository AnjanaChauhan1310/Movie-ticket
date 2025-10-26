<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
</head>
<body>

<?php include('connect.php')  ?>
<?php include('header.php')  ?>





<section id="team" class="team section-bg">
      <div class="container aos-init aos-animate" data-aos="fade-up">

        <div class="section-title">
          <h3>Our <span>Theater</span></h3>
                          
          
        </div>

        
        <div class="row mt-5">
       
      <!--  <div class="col-lg-3 col-md-6 d-flex align-items-stretch aos-init aos-animate" data-aos="fade-up" data-aos-delay="100" > 
                                <div class="member">
                                  <div class="member-img">
                                    <img src="admin/uploads/surmandir.jpg"  style="height:250px !important; width:250px !important;" alt="">
                                     <p style="font-family:'Sitka Small Semibold'" > Surmandir Theater - Palanpur 
                                    <br>
                                    <p> Surmandir Theater, Near Bihari </p> <p> Bag, Abu Highway, Palanpur</p><p> PINCODE : 385001</p>
                                    <div class="social"> 
                                      <a href="surmandir.php" target="_blank"  class="btn btn-primary" style="width:150px;">all movies</a>
                                  </div>
                                </div>
                               </div>
        </div>
          
                                      


                          <div1 class="col-lg-3 col-md-6 d-flex align-items-stretch aos-init aos-animate" data-aos="fade-up" data-aos-delay="100" > 
                                 <div1 class="member">
                                 <div1 class="member-img"> 
                                    <img src="admin/uploads/vijay.jpg"  style="height:250px !important; width:250px !important;" alt="">
                                     <p style="font-family:'Sitka Small Semibold'" > Vijay Cinema - Patan
                                    <br>
                                    <p> Tirupati Market, Near Sidhhpur</p> <p>Cross Road, Patan</p><p> PINCODE : 384265</p>
                                     <div1 class="social"> 
                                      <a href="vijay.php" target="_blank"  class="btn btn-primary" style="width:150px;">all movies</a>
                                     </div>
                                  </div>
                                  </div>
                           </div>
                
-->
                          
          <?php 

                                $sql = "select theater.*, movies.*, categories.catname
                                from theater
                                inner join movies on movies.movieid = theater.movieid
                                inner join categories on categories.catid = movies.catid
                                order by theater.theaterid DESC";
                                $res  = mysqli_query($con, $sql);
                                if(mysqli_num_rows($res) > 0){
                                  while($data = mysqli_fetch_array($res)){

                                ?>

                              <div class="col-lg-3 col-md-6 d-flex align-items-stretch aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                                <div class="member">
                                  <div class="member-img">
                                    <img src="admin/uploads/<?= $data['image'] ?>"  style="height:250px !important; width:250px !important;" alt="">
                                    <div class="social">
                                      <a href="admin/uploads/<?= $data['trailer'] ?>" target="_blank"  class="btn btn-primary" style="width:150px;">Watch Trailer</a>
                                    
                                    </div>
                                  </div>
                                  <div class="member-info">
                                    <h4><?= $data['theater_name'] ?></h4>
                                    <h6><?= $data['title'] ?> <span><?= $data['catname'] ?></span></h6>
                                    <span><?= $data['timing'] ?> <span><?= $data['days'] ?></span></span>
                                    <span><?= $data['date'] ?></span>
                                    <!-- <span> <?= $data['location'] ?></span> -->
                                   <h3> <p style="font-family:'Sitka Small Semibold' font: size 100px;" ><?= $data['location'] ?>  </p> 
                                    <h4>Per Ticket: Rs.<?= $data['price'] ?></h4>
                                    <a href="booking.php?id=<?=$data['theaterid']?>" target="_blank" class="btn btn-primary"> Book Now </a>
                                   
                                  </div>
                                </div>
                    </div>
  
          <?php
            }
          }

          ?>
 <center>
        </div>
             <br>
             <h4> 
              For Your Favourite Seat Just Contact Us 
             </h4>
             <br>

        <h5> Surmandir Theater Contact Number :  <span>8546932156 </span> </h5>
          <h5>  Vijay Cinema Contact Number :  <span>6346932156 </span> </h5>
          <h5> Planet Multiplex Contact Number :  <span>6546932156 </span> </h5>
        </center>
      </div>
</section>

<?php include('footer.php')  ?>


</body>
</html>