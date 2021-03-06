<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * @author http://roytuts.com
 */
class ChartController extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('chartmodel', 'chart');
    }

    public function index() {
        $results = $this->chart->get_chart_data();
        $data['chart_data'] = $results['chart_data'];
        $data['min_year'] = $results['min_year'];
        $data['max_year'] = $results['max_year'];
//
//        $data ['main_content'] = 'chart';
//        $this->load->view('layout/MainLayout', $data);

        $this->load->view('chart', $data);
    }

}

/* End of file ChartController.php */
/* Location: ./application/controllers/ChartController.php */