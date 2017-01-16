<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        //$this->load->model('chartmodel', 'chart');
        $this->load->model('DetailPKByProvinsiModel', 'chart');
        $this->load->model('DetailLKByProvinsiModel', 'chart2');
        $this->load->model('pemenuhantkbyprovinsiModel', 'chart3');
        $this->load->model('DetailLKByJenisKelaminModel', 'chart4');
        $this->load->model('detailpkbyjeniskelaminModel', 'chart5');
        $this->load->model('rekapjabatanfungsionalpusatModel', 'chart6');
        $this->load->model('penempatanakadModel', 'chart7');

    }

	public function index()
	{
        if ($this->session->userdata('id'))
        {
            $results = $this->chart->get_chart_data();
            $data['chart_data'] = $results['chart_data'];
            $data['min_year'] = $results['min_year'];
            $data['max_year'] = $results['max_year'];

            $results2 = $this->chart2->get_chart_data();
            $data['chart_data2'] = $results2['chart_data'];
            $data['min_year2'] = $results2['min_year'];
            $data['max_year2'] = $results2['max_year'];

            $results3 = $this->chart3->get_chart_data();
            $data['chart_data3'] = $results3['chart_data'];
            $data['min_year3'] = $results3['min_year'];
            $data['max_year3'] = $results3['max_year'];

            $results4 = $this->chart4->get_chart_data();
            $data['chart_data4'] = $results4['chart_data'];
            $data['min_year4'] = $results4['min_year'];
            $data['max_year4'] = $results4['max_year'];

            $results5 = $this->chart5->get_chart_data();
            $data['chart_data5'] = $results5['chart_data'];
            $data['min_year5'] = $results5['min_year'];
            $data['max_year5'] = $results5['max_year'];

            $results6 = $this->chart6->get_chart_data();
            $data['chart_data6'] = $results6['chart_data'];
            $data['min_year6'] = $results6['min_year'];
            $data['max_year6'] = $results6['max_year'];

            $results7 = $this->chart7->get_chart_data();
            $data['chart_data7'] = $results7['chart_data'];
            $data['min_year7'] = $results7['min_year'];
            $data['max_year7'] = $results7['max_year'];
            $data['total7'] = $this->chart7->sum();

            $data ['main_content'] = 'dashboard';
            $this->load->view('layout/MainLayout', $data);
        }
        else{
            redirect("account/login");
        }
	}
}
