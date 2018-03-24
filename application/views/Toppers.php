<!DOCTYPE html>
<html>
<head>
  <title>Toppers</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <?php $this->load->view('head') ?>

  <link href="<?php echo base_url('assets/css/topper.css'); ?>" rel="stylesheet">
  
  <style type="text/css">
  @import url(https://fonts.googleapis.com/css?family=Raleway:400,200,300,800);
  @import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);

  /*#head.secondary{
    height: 100px !important;
    padding-bottom: 25px;
  }*/

  #scroll{
    height:900px;
    overflow-y: auto;
  }
  div.col-sm-9 div{
    height: auto;
    width: auto;
    overflow-y: auto;
  }
    .testimonials h3{margin-top:15px; }

  /*.cards{
    margin-top: 25px;
    height: 150px;
    width:auto;
    border: 1px solid black;
  }

  .cards >img {
    height: 148px;
    width: auto;
  }
*/
p.inset {border-style: inset;}

</style>
</head>

<body >


  <header id="head" class="secondary">

    <div class="container">
      <h1>Toppers</h1>    
    </div>
  </header>


  <div class="container" data-spy="scroll" data-target="#myScrollspy" data-offset="20">
    <div class="row">

      <nav class="col-sm-2" style="margin-top: 25px;">
        <ul class="nav nav-pills nav-stacked">
         
         <?php if(isset($AllYears)) {
          foreach($AllYears as $year) {
            $year_in = 'a_'.$year->year_id;
            ?>
            <li>
              <a href="#<?php echo $year->year; ?>"> <?php echo $year->year; ?> 
              </a>
            </li>         
            <?php }?>

          </ul>
        </nav> 

        <div class="col-sm-4">

          <div class="panel panel-primary">
            
            <?php 
            foreach($AllYears as $year) {
              $year_in = 'a_'.$year->year_id;  

              ?>
              <br>

              <div class="panel-heading" id="<?php echo $year->year; ?>"><?php echo $year->year; ?></div>

                <div class="panel-body">

                  <?php 
                  if(isset($$year_in) && !empty($$year_in)) 
                  { 
                    foreach($$year_in as $value) 
                    { 
                      ?>
                      <br>


                  <div class="container" id="testimonials-row" data-ride="carousel"> 
        <div class="row"> 
            <div class="col-md-14 column"> 
                <div class="carousel" id="testimonials-rotate"> 
                  <ol class="carousel-indicators">
  </ol>
                    <div class="carousel-inner"> 
                        <div class="item active">   
                            <div class="col-lg-2">
                              <p class="inset">
                                <img src="<?php echo ($value->photo == '') ? base_url("admin/panel/img/male.png") : base_url("admin/panel/img/topperimage/".$value->photo); ?>">
                            </div> 
                            <div class="testimonials col-lg-10">

                                <h3><p>Work Hard And Enjoy the rest</p>
                                
                                    - <small><?php echo $value->student_name;?></h4></small> 
                                                          <p style="text-align: center;">Standard : <?php echo $value->standard ?>
                            Subject : <?php echo $value->subject ?><br>
                            Result : <?php echo $value->result;?></p><br></h3> <br>
                            </div> 
       
                        <?php } } 

                        else { ?>
                        
                        <div class="col-sm-9">
                          No Toppers
                         <h2><?php echo $value->student_name;?></h2> <br>                       </div>

                        <?php } ?>
                      </div>       <!-- end of Panel body -->

</p>
                      <?php 
                    }
                  } ?> 
                </div> <!-- end of Panel body -->
              </div> <!-- end of col-sm-9 -->

            </div>  <!-- end of row -->
          </div>  <!-- end of container -->
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        
       
        <script>
          $("figure").mouseleave(
            function () {
              $(this).removeClass("hover");
            }
            );
          </script>
 <?php $this->load->view('footer') ?>
        </body>
        </html>
