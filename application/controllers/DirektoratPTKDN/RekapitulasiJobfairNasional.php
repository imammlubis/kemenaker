<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 15/12/2016
 * Time: 1:54
 */
class RekapitulasiJobfairNasional extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('RekapitulasiJobfairNasionalModel');
        $this->load->library('pagination');
    }
    function index($offset=0)
    {
        $config['total_rows'] = $this->RekapitulasiJobfairNasionalModel->total();
        $config['base_url'] = base_url()."DirektoratPTKDN/RekapitulasiJobfairNasional/Index";
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
        $query = $this->RekapitulasiJobfairNasionalModel->get(10,$this->uri->segment(4));
        $data['RekapitulasiJobfairNasionalModel'] = null;
        if($query){
            $data['RekapitulasiJobfairNasionalModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPTKDN/RekapitulasiJobfairNasional';
        $this->load->view('layout/MainLayout', $data);
    }

    function UploadExcel(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);
        //$col = $objPHPExcel->setActiveSheetIndex(0)->getHighestColumn();
        $this->db->empty_table('rekapitulasijobfairnasional');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $tanggal = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i);
            $lokasiPameran = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i);
            $jumlahPeserta = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(3, $i);
            $jumlahStand = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(4, $i);
            $jumlahLowongan = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(5, $i);
            $jabatanYangDitawarkan = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(6, $i);
            $targetPengunjung = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(7, $i);
            $realisasiJumlahPengunjung = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(8, $i);
            $penempatan = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(9, $i);

            $dataInput = array(
                'TANGGAL' => $tanggal,
                'LOKASIPAMERAN' => $lokasiPameran,
                'JUMLAHPESERTA' => $jumlahPeserta,
                'JUMLAHSTAND' => $jumlahStand,
                'JUMLAHLOWONGAN' => $jumlahLowongan,
                'JABATANYANGDITAWARKAN' => $jabatanYangDitawarkan,
                'TARGETPENGUNJUNG' => $targetPengunjung,
                'REALISASI' => $realisasiJumlahPengunjung,
                'PENEMPATAN' => $penempatan
            );
            $this->RekapitulasiJobfairNasionalModel->Add($dataInput);
        }
        redirect('DirektoratPTKDN/RekapitulasiJobfairNasional');
    }

}