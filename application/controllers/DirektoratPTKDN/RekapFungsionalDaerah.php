<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 11/12/2016
 * Time: 2:13
 */
class RekapFungsionalDaerah extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('rekapjabatanfungsionaldaerahModel');
        $this->load->library('pagination');
    }

    function index($offset=0)
    {
        $config['total_rows'] = $this->rekapjabatanfungsionaldaerahModel->totalRekapFungsionalDaerah();
        $config['base_url'] = base_url()."DirektoratPTKDN/RekapFungsionalDaerah/Index";
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
        $query = $this->rekapjabatanfungsionaldaerahModel->getRekapFungsionalDaerah(10,$this->uri->segment(4));
        //$query = $this->rekapjabatanfungsionaldaerahModel->getDetailPKByProvinsi(5,$page);
        $data['rekapjabatanfungsionaldaerahModel'] = null;
        if($query){
            $data['rekapjabatanfungsionaldaerahModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPTKDN/RekapFungsionalDaerah';
        $this->load->view('layout/MainLayout', $data);
    }

    function UploadExcel(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);
        //$col = $objPHPExcel->setActiveSheetIndex(0)->getHighestColumn();
        $this->db->empty_table('rekapjabatanfungsionaldaerah');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        for ($i = 3; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $namaPusat = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i);
            $_2d = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i)->getValue();
            $_3a = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(3, $i)->getValue();
            $_3b = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(4, $i)->getValue();
            $_3c = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(5, $i)->getValue();
            $_3d = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(6, $i)->getValue();
            $_4a = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(7, $i)->getValue();
            $_4b = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(8, $i)->getValue();
            $_4c = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(9, $i)->getValue();
            $total = $_2d+$_3a+$_3b+$_3c+$_3d+$_4a+$_4b+$_4c;

            $dataInput = array(
                'IDPROVINSI' => $namaPusat,
                '2D' => $_2d,
                '3A' => $_3a,
                '3B' => $_3b,
                '3C' => $_3c,
                '3D' => $_3d,
                '4A' => $_4a,
                '4B' => $_4b,
                '4C' => $_4c,
                'TOTAL' => $total,
            );
            $this->rekapjabatanfungsionaldaerahModel->AddRekapFungsionalDaerah($dataInput);
        }
        redirect('DirektoratPTKDN/RekapFungsionalDaerah');
    }

}