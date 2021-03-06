

<header id="head" style="margin-top: 10px;">
  <div class="container">
    <div class="heading-text">							
      <h1 class="animated flipInY delay1">JD TUTORIALS</h1>
      <p>The Key To Success</p>
  	</div>

    <div class="container">                       
    <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4" >
        <div data-thumb="<?php echo base_url('assets/images/slides/thumbs/1.jpg'); ?>" data-src="<?php echo base_url('assets/images/slides/1.jpg'); ?>">
        </div> 
        <div data-thumb="<?php echo base_url('assets/images/slides/thumbs/img2.jpg'); ?>" data-src="<?php echo base_url('assets/images/slides/img2.jpg'); ?>">
        </div>
        <div data-thumb="<?php echo base_url('assets/images/slides/thumbs/img3.jpg'); ?>" data-src="<?php echo base_url('assets/images/slides/img3.jpg'); ?>">
        </div> 
    </div><!-- #camera_wrap_4 -->
   </div><!-- .fluid_container -->
</div>
</header>

<!-- /Header -->

<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<!-- <script src="<?php echo base_url('assets/js/modernizr-latest.js'); ?>"></script>  -->
<script type='text/javascript' src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
<script type='text/javascript' src="<?php echo base_url('assets/js/fancybox/jquery.fancybox.pack.js'); ?>"></script>

<!-- <script type='text/javascript' src="<?php echo base_url('assets/js/jquery.mobile.customized.min.js'); ?>"></script> -->
<script type='text/javascript' src="<?php echo base_url('assets/js/jquery.easing.1.3.js'); ?>"></script> 
<script type='text/javascript' src="<?php echo base_url('assets/js/camera.min.js'); ?>"></script> 
<script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script> 
<!-- <script src="<?php echo base_url('assets/js/custom.js'); ?>"></script> -->
<script>
    
    jQuery(function(){

        jQuery('#camera_wrap_4').camera({
            transPeriod: 500,
            time: 3000,
            height: '600',
            loader: 'false',
            pagination: true,
            thumbnails: false,
            hover: false,
            playPause: false,
            navigation: false,
            opacityOnGrid: false,
            imagePath: 'assets/images/'
        });

    });
</script>

<?php 
    if( isset($_SESSION['sent'])){
    ?>
    <script type='text/javascript'>
        jQuery(document).ready(function(){
        jQuery('#message').modal('toggle');
        setTimeout(function(){jQuery('#message').modal('hide');
        },3000);
    });
    </script>

<?php $this->session->unset_userdata('sent');}?>



