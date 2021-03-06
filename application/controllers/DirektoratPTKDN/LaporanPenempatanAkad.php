<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 17:58
 */
class LaporanPenempatanAkad extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('penempatanakadModel');
        $this->load->library('pagination');
        $this->load->library('session');
    }

    function index($offset=0)
    {
        if ($this->session->userdata('id'))
        {

            $config['total_rows'] = $this->penempatanakadModel->total();
        $config['base_url'] = base_url()."DirektoratPTKDN/LaporanPenempatanAkad/Index";
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
        $query = $this->penempatanakadModel->get(10,$this->uri->segment(4));
        $data['penempatanakadModel'] = null;
        if($query){
            $data['penempatanakadModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPTKDN/LaporanPenempatanAkad';
        $this->load->view('layout/MainLayout', $data);

        }
        else{
            redirect("account/login");
        }
    }
    function Search()
    {
        if ($this->session->userdata('id'))
        {
            $key = $this->input->get('key', TRUE);

            $config['total_rows'] = $this->penempatanakadModel->totalSearch($key);
            $config['base_url'] = base_url()."DirektoratPTKDN/LaporanPenempatanAkad/Index";
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
            $query = $this->penempatanakadModel->getSearch(10,$this->uri->segment(4), $key);
            $data['penempatanakadModel'] = null;
            if($query){
                $data['penempatanakadModel'] =  $query;
            }
            $data ['main_content'] = 'DirektoratPTKDN/LaporanPenempatanAkad';
            $this->load->view('layout/MainLayout', $data);

        }
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
        $this->db->empty_table('penempatanakad');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $bulan = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i);
            $jumlahLaki = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i);
            $jumlahPr = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i);
            $total = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(3, $i)->getValue();
            $totals = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i)->getValue() + $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i)->getValue();
            $tahun = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(4, $i);
//print_r($total);
            print_r($totals);
            $dataInput = array(
                'BULAN' => $bulan,
                'JUMLAHLAKI' => $jumlahLaki,
                'JUMLAHPEREMPUAN' => $jumlahPr,
                'TOTAL' => $totals,
                'TAHUN' => $tahun
            );
            $this->penempatanakadModel->add($dataInput);
        }
        redirect('DirektoratPTKDN/LaporanPenempatanAkad');
    }
}