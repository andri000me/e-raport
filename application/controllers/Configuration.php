<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Configuration extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }
    
    public function academic_year()
    {
        $data['configuration'] = $data['academic_year'] = true;
        $data['content'] = 'config/academic_year';
        $this->load->view('index',$data);
    }
    public function date_print()
    {
        $data['configuration'] = $data['date_print'] = true;
        $data['content'] = 'config/date_print';
        $this->load->view('index',$data);
    }

}

/* End of file Configuration.php */