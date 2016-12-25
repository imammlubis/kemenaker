<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 25/12/2016
 * Time: 9:55
 */
class PengadaanSaranaBursaKerjaOnline extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('pengadaansaranabursakerjaonlineModel');
        $this->load->library('pagination');
    }

    function index($offset=0)
    {
        $config['total_rows'] = $this->pengadaansaranabursakerjaonlineModel->total();
        $config['base_url'] = base_url()."DirektoratPTKDN/PengadaanSaranaBursaKerjaOnline/Index";
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
        $query = $this->pengadaansaranabursakerjaonlineModel->get(10,$this->uri->segment(4));
        //$query = $this->pengadaansaranabursakerjaonlineModel->getDetailPKByProvinsi(5,$page);
        $data['pengadaansaranabursakerjaonlineModel'] = null;
        if($query){
            $data['pengadaansaranabursakerjaonlineModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPTKDN/PengadaanSaranaBursaKerjaOnline';
        $this->load->view('layout/MainLayout', $data);
    }

    function UploadExcel(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);
        //$col = $objPHPExcel->setActiveSheetIndex(0)->getHighestColumn();
        $this->db->empty_table('pengadaansaranabursakerjaonline');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        for ($i = 3; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $tahun = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i);
            $kab1 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i)->getValue();
            $kota1 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i)->getValue();
            $prov1 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(3, $i)->getValue();
            $jum1 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(4, $i)->getValue();
            $kab2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(5, $i)->getValue();
            $kota2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(6, $i)->getValue();
            $prov2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(7, $i)->getValue();
            $jum2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(8, $i)->getValue();

            $kab3 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(9, $i)->getValue();
            $kota3 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(10, $i)->getValue();
            $prov3 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(11, $i)->getValue();
            $jum3 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(12, $i)->getValue();

            $kab4 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(13, $i)->getValue();
            $kota4 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(14, $i)->getValue();
            $prov4 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(15, $i)->getValue();
            $jum4 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(16, $i)->getValue();

            $dataInput = array(
                'TAHUN' => $tahun,
                'KAB1' => $kab1,
                'KOTA1' => $kota1,
                'PROV1' => $prov1,
                'JUM1' => $jum1,
                'KAB2' => $kab2,
                'KOTA2' => $kota2,
                'PROV2' => $prov2,
                'JUM2' => $jum2,
                'KAB3' => $kab3,
                'KOTA3' => $kota3,
                'PROV3' => $prov3,
                'JUM3' => $jum3,
                'KAB4' => $kab4,
                'KOTA4' => $kota4,
                'PROV4' => $prov4,
                'JUM4' => $jum4,
            );
            $this->pengadaansaranabursakerjaonlineModel->add($dataInput);
        }
        redirect('DirektoratPTKDN/PengadaanSaranaBursaKerjaOnline');
    }

}