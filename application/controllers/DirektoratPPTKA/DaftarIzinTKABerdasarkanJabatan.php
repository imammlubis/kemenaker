<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 14:54
 */
class DaftarIzinTKABerdasarkanJabatan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('izinmempekerjakantkaberdasarkanjabatanModel');
        $this->load->library('pagination');
    }
    function index($offset=0)
    {
        $config['total_rows'] = $this->izinmempekerjakantkaberdasarkanjabatanModel->total();
        $config['base_url'] = base_url()."DirektoratPPTKA/DaftarIzinTKABerdasarkanJabatan/Index";
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
        $query = $this->izinmempekerjakantkaberdasarkanjabatanModel->get(10,$this->uri->segment(4));
        $data['izinmempekerjakantkaberdasarkanjabatanModel'] = null;
        if($query){
            $data['izinmempekerjakantkaberdasarkanjabatanModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPPTKA/DaftarIzinTKABerdasarkanJabatan';
        $this->load->view('layout/MainLayout', $data);
    }

    function UploadExcel(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);
        //$col = $objPHPExcel->setActiveSheetIndex(0)->getHighestColumn();
        $this->db->empty_table('izinmempekerjakantkaberdasarkanjabatan');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());

        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $levelJabatan = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i);
            for($y=1; $y<$highestColumnIndex; $y++) {
                $tahun = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, 1)->getValue();
                $jumlah = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow($y, $i);

                $dataInput = array(
                    'TAHUN' => $tahun,
                    'JUMLAH' => $jumlah,
                    'LEVELJABATAN' => $levelJabatan
                );
                $this->izinmempekerjakantkaberdasarkanjabatanModel->add($dataInput);
            }

        }
        redirect('DirektoratPPTKA/DaftarIzinTKABerdasarkanJabatan');
    }
}