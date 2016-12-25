<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class LowonganKerjaTerdaftar extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('DetailLKByProvinsiModel');
        $this->load->library('pagination');

        $this->load->library('session');
    }

    function index($offset=0)
    {
        if ($this->session->userdata('id'))
        {

            $config['total_rows'] = $this->DetailLKByProvinsiModel->totalDetailLKByProvinsi();
        $config['base_url'] = base_url()."DirektoratPKK/LowonganKerjaTerdaftar/Index";
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
        $query = $this->DetailLKByProvinsiModel->getDetailLKByProvinsi(10,$this->uri->segment(4));
        //$query = $this->DetailPKByProvinsiModel->getDetailPKByProvinsi(5,$page);
        $data['DetailLKByProvinsiModel'] = null;
        if($query){
            $data['DetailLKByProvinsiModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPKK/LowonganKerjaTerdaftar';
        $this->load->view('layout/MainLayout', $data);}
        else{
            redirect("account/login");
        }
    }

    function UploadExcel(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);
        //$col = $objPHPExcel->setActiveSheetIndex(0)->getHighestColumn();
        $this->db->empty_table('lokerbyprovinsi');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++)
        {
            $dataVal = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i)->getValue();
            for($y=1; $y<$highestColumnIndex; $y++)
            {
                $dataVal2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, $i)->getValue();
                $dataVal3 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, 1)->getValue();
//                print_r($dataVal);print_r(',');
//                print_r($dataVal2);print_r(',');
//                print_r($dataVal3);
//                print_r('<br/>');
                //disni

                $dataInput = array(
                    'IDPROVINSI' => $dataVal,
                    'IDTAHUN' => $dataVal3,
                    'JUMLAH' => $dataVal2
                );
                $this->DetailPKByProvinsiModel->AddDetailPKByProvinsi($dataInput);
            }
        }
        redirect('DirektoratPKK/PencariKerjaTerdaftar');
    }
}

