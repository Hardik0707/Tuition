	<?php
	ob_start();
	ini_set('display_errors','1');
	error_reporting(E_ALL);
	if( ! ini_get('date.timezone') )
	{
		date_default_timezone_set('GMT');
	}
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Gallery_Controller extends CI_Controller {

		function __construct() {
			parent::__construct();
			$this->load->model('Gallery_Model');
			$this->load->library('smart_resize');
		}


		public function ViewGallery()
		{
			if(!isset($_SESSION['Admin'])) {
	            $this->load->view('Index');
	        } 
	        else 
	        {
			$result['AllImages'] = $this->Gallery_Model->FetchAllImages();
			$this->load->view('Gallery_View', $result);
			}
		}

		public function DeleteImage($id) {
			if(!isset($_SESSION['Admin'])) {
	            $this->load->view('Index');
	        } 
	        else 
	        {
			if (!empty($id)) {
				$success = $this->Gallery_Model->DeleteImage($id);
				$_SESSION['DeleteImage'] = $success;
				redirect('Gallery_Controller/ViewGallery');
			}
		}
		}


		public function AddImage() {
			if(!isset($_SESSION['Admin'])) {
	            $this->load->view('Index');
	        } 
	        else 
	        {
			$this->load->view('AddImage');
		}
		}

		public function InsertImage()
		{
			if(!isset($_SESSION['Admin'])) {
	            $this->load->view('Index');
	        } 
	        else 
	        {
			if(isset($_POST['AddImage']))
			{
				$category = $_POST['category'];
				$description = $_POST['description'];
				$new_file_name = $description."_".time() . ".jpeg";

				if ($this->input->post('AddImage') && !empty($_FILES['ImageUpload']['name'])) {
					
					$uploadPath = 'panel/img/gallery';
					$config['upload_path'] = $uploadPath;
					$config['allowed_types'] = 'gif|jpg|png|jpeg';
					$config['file_name'] = $new_file_name;
	                $config['max_size']	= '500'; 
	                $this->load->library('upload', $config);
	                $this->upload->initialize($config);

	                
	                if ($this->upload->do_upload('ImageUpload')){ 
	            
	                	$fileData =$this->upload->data(); 
	                	$data = array('category' => $category, 'description' => $description, 'photo' => $fileData['file_name']);

	                                     
	                }
	                else{
	                	$error = array('error' => $this->upload->display_errors());
	                	$_SESSION['InsertGalleryData'] = $error['error'];
	                    redirect('/Gallery_Controller/AddImage');
	                }	

	                if(!empty($data))	
	                {	
	                	$success = $this->Gallery_Model->InsertImage($data);	                	 
	                	$_SESSION['InsertGalleryData'] = $success;
	                	redirect("Gallery_Controller/ViewGallery");
	                }
	            }
	        }
	    }
	    }
	}
	?>