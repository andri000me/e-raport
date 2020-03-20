<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		is_logged_in();
		$this->load->model('User_m','m');
		
	}
	

	public function index()
	{
		$data['dashboard'] = true;
		$data['content'] = 'dashboard';
		$this->load->view('index',$data);
	}

	public function user_profile()
	{
		$id = _toInteger(dec_url($this->uri->segment(3)));
		$data['title'] = 'User Profile';
		$data['profil'] = $this->m->getUserById($id);
		$data['content'] = 'backend/user_profile';
		$this->load->view('index', $data);
	}

}

/* End of file Dashboard.php */