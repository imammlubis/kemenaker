<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PencariKerjaTerdaftarByJK extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('detailpkbyjeniskelaminModel');
        $this->load->library('pagination');
        $this->load->library('session');
    }

    function index($offset=0)
    {
        if ($this->session->userdata('id'))
        {
            $config['total_rows'] = $this->detailpkbyjeniskelaminModel->totalDetailPKByJenisKelamin();
            $config['base_url'] = base_url()."DirektoratPKK/PencariKerjaTerdaftarByJK/Index";
            $config['per_page'] = 10;
            $config['uri_segment'] = '4';

            $config['full_tag_open'] = '<div class="dataTables_paginate paging_bootstrap_full_number" id="sample_1_paginate">
                                                            <ul class="pagination" style="visibility: visible;">';
            $config['full_tag_close'] = '</ul></div>';

            //$config['first_link'] = '« First';
            $config['first_tag_open'] = '<li class="prev">';
            $config['first_tag_close'] = '</li>';

            //$config['last_link'] = 'Last »';
            $config['last_tag_open'] = '<li class="next">';
            $config['last_tag_close'] = '</li>';

            //$config['next_link'] = 'Next →';
            $config['next_tag_open'] = '<li class="next">';
            $config['next_tag_close'] = '</li>';

            //$config['prev_link'] = '← Previous';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';

            $config['cur_tag_open'] = '<li class="active"><a href="">';
            $config['cur_tag_close'] = '</a></li>';

            $config['num_tag_open'] = '<li class="page">';
            $config['num_tag_close'] = '</li>';
            $this->pagination->initialize($config);
            //$page = $this->uri->segment(3);
            //print_r($page);
            $query = $this->detailpkbyjeniskelaminModel->getDetailPKByJK(10,$this->uri->segment(4));
            //$query = $this->detailpkbyjeniskelaminModel->getDetailPKByProvinsi(5,$page);
            $data['detailpkbyjeniskelaminModel'] = null;
            if($query){
                $data['detailpkbyjeniskelaminModel'] =  $query;
            }
            $data ['main_content'] = 'DirektoratPKK/PencariKerjaTerdaftarByJK';
            $this->load->view('layout/MainLayout', $data);
        }
        else{
            redirect("account/login");
        }
    }

    function Search()
    {
        $key = $this->input->get('key', TRUE);
        if ($this->session->userdata('id'))
        {
            $config['total_rows'] = $this->detailpkbyjeniskelaminModel->totalDetailPKByJenisKelaminSearch($key);
            $config['base_url'] = base_url()."DirektoratPKK/PencariKerjaTerdaftarByJK/Index";
            $config['per_page'] = 10;
            $config['uri_segment'] = '4';

            $config['full_tag_open'] = '<div class="dataTables_paginate paging_bootstrap_full_number" id="sample_1_paginate">
                                                            <ul class="pagination" style="visibility: visible;">';
            $config['full_tag_close'] = '</ul></div>';

            //$config['first_link'] = '« First';
            $config['first_tag_open'] = '<li class="prev">';
            $config['first_tag_close'] = '</li>';

            //$config['last_link'] = 'Last »';
            $config['last_tag_open'] = '<li class="next">';
            $config['last_tag_close'] = '</li>';

            //$config['next_link'] = 'Next →';
            $config['next_tag_open'] = '<li class="next">';
            $config['next_tag_close'] = '</li>';

            //$config['prev_link'] = '← Previous';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';

            $config['cur_tag_open'] = '<li class="active"><a href="">';
            $config['cur_tag_close'] = '</a></li>';

            $config['num_tag_open'] = '<li class="page">';
            $config['num_tag_close'] = '</li>';
            $this->pagination->initialize($config);
            //$page = $this->uri->segment(3);
            //print_r($page);
            $query = $this->detailpkbyjeniskelaminModel->getDetailPKByJKSearch(10,$this->uri->segment(4), $key);
            //$query = $this->detailpkbyjeniskelaminModel->getDetailPKByProvinsi(5,$page);
            $data['detailpkbyjeniskelaminModel'] = null;
            if($query){
                $data['detailpkbyjeniskelaminModel'] =  $query;
            }
            $data ['main_content'] = 'DirektoratPKK/PencariKerjaTerdaftarByJK';
            $this->load->view('layout/MainLayout', $data);
        }
        else{
            redirect("account/login");
        }
    }

    function UploadExcelByJenisKelamin(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);

        $this->db->empty_table('detailpkbyjeniskelamin');

        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        $pria = 2;
        $wanita = 3;
        for($y=1; $y<$highestColumnIndex; $y++)
        {
            $dataTahun = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, 1)->getValue();
            $dataPria = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, $pria)->getValue();
            $dataWanita = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, $wanita)->getValue();

            print_r($dataPria);print_r(',');
            print_r($dataWanita);
            print_r('<br/>');
            //disni

            $dataInput = array(
                'IDTAHUN' => $dataTahun,
                'PRIA' => $dataPria,
                'WANITA' => $dataWanita
            );
            $this->detailpkbyjeniskelaminModel->Add($dataInput);
        }
        redirect('DirektoratPKK/PencariKerjaTerdaftarByJK');
    }
}

