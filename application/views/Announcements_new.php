<!DOCTYPE HTML>
<html>
<head>
	<title>Announcements</title>
	<?php $this->load->view("head"); ?>

	<style type="text/css">
	
	.card{
		border: 0px solid #3d84e6;
		height: 70px;
		box-shadow: 5px 3px 10px ;
		margin: 15px;
		border-radius: 10px;
		padding-left:0px;
		align-content: center;
	}
	.card > img{
		height: 70px;
		width: 100px;
		border-radius: 10px;
		margin-left: 1px;
		position: relative;
		
	}
	.card:hover{
		box-shadow: 7px 5px 10px #3d84e6;
	}
	.title{
		width:125px; 
		margin:0px;
		padding: 0px;
		text-transform: uppercase;
		text-align: center;
		display: inline-block;
		font-size: 14px;
		text-overflow:ellipsis;
	}
	img {
  border: 70%;
}

	
</style>

</head>
<body style="background-color: ">
	<?php $this->load->view("navbar"); ?>

	<header id="head" class="secondary">
		<div class="container">
			<h1>Announcements</h1>
		</div>
	</header>

	<div class="container" style="margin-top: 8px;">

		<div class="row col-sm-offset-1">
			<?php if(isset($AllPublic))
			{
				foreach ($AllPublic as $public) {
					?> 
					<a href="#" data-toggle="modal" data-target="#<?php echo $public->id; ?>" style="text-decoration:none;color: blue;">
						<div class="card col-sm-3">


							<img src="<?php echo base_url("/admin/panel/img/Announcement/Public/$public->photo"); ?>">
							


							<div class="title">
								<center><?php echo $public->title;?></center>	
							</div>
						</div>
					</a>

					<!-- Modal -->
					<div class="modal fade" id="<?php echo $public->id;?>" tabindex="-1" role="dialog"  aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button> -->
									<h3><?php echo $public->title;?></h3>
								</div>
								<div class="modal-body">
									
								<center><img src="<?php echo base_url("/admin/panel/img/Announcement/Public/$public->photo"); ?>" class="img-responsive" height="200px" width="200px">
								</center>
								</div>
								<div class="modal-footer">
									<center><?php echo $public->description; ?></center><br><br>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

								</div>
							</div>
						</div>
					</div>


					<?php }} ?>


				</div>
				<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
				<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>


			</body>
			</html>