<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 15:14
 */
class PembekalanMotivator extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('pembekalanmotivatorModel');
        $this->load->library('pagination');
        $this->load->library('session');
    }
    function index($offset=0)
    {

        if ($this->session->userdata('id')) {

            $config['total_rows'] = $this->pembekalanmotivatorModel->total();
            $config['base_url'] = base_url()."DirektoratBBPPKnPKK/PembekalanMotivator/Index";
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
            $query = $this->pembekalanmotivatorModel->get(10,$this->uri->segment(4));
            $data['pembekalanmotivatorModel'] = null;
            if($query){
                $data['pembekalanmotivatorModel'] =  $query;
            }
            $data ['main_content'] = 'DirektoratBBPPKnPKK/PembekalanMotivator';
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
        $this->db->empty_table('pembekalanmotivator');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());

        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $provinsi = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i);
            $kuota = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i);
            $angkatan1 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i);
            $angkatan2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(3, $i);
            $jumlah = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(4, $i);
            $selisihOrang = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(5, $i);
            $tahun = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(6, $i);

            $dataInput = array(
                'IDPROVINSI' => $provinsi,
                'KUOTA' => $kuota,
                'ANGKATAN1' => $angkatan1,
                'ANGKATAN2' => $angkatan2,
                'JUMLAH' => $jumlah,
                'SELISIHORANG' => $selisihOrang,
                'TAHUN' => $tahun,
            );
            $this->pembekalanmotivatorModel->add($dataInput);

        }
        redirect('DirektoratBBPPKnPKK/PembekalanMotivator');
    }
}