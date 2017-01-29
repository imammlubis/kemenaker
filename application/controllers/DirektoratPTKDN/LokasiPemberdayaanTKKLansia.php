<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 21/12/2016
 * Time: 7:55
 */
class LokasiPemberdayaanTKKLansia extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('lokasipemberdayaantkklansiaModel');
        $this->load->library('pagination');
        $this->load->library('session');
    }
    function index($offset=0)
    {
        if ($this->session->userdata('id'))
        {

            $config['total_rows'] = $this->lokasipemberdayaantkklansiaModel->total();
        $config['base_url'] = base_url()."DirektoratPTKDN/LokasiPemberdayaanTKKLansia/Index";
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
        $query = $this->lokasipemberdayaantkklansiaModel->get(10,$this->uri->segment(4));
        $data['lokasipemberdayaantkklansiaModel'] = null;
        if($query){
            $data['lokasipemberdayaantkklansiaModel'] =  $query;
        }
        $data ['main_content'] = 'DirektoratPTKDN/LokasiPemberdayaanTKKLansia';
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

            $config['total_rows'] = $this->lokasipemberdayaantkklansiaModel->totalSearch($key);
            $config['base_url'] = base_url()."DirektoratPTKDN/LokasiPemberdayaanTKKLansia/Index";
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
            $query = $this->lokasipemberdayaantkklansiaModel->getSearch(10,$this->uri->segment(4), $key);
            $data['lokasipemberdayaantkklansiaModel'] = null;
            if($query){
                $data['lokasipemberdayaantkklansiaModel'] =  $query;
            }
            $data ['main_content'] = 'DirektoratPTKDN/LokasiPemberdayaanTKKLansia';
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
        $this->db->empty_table('lokasipemberdayaantkklansia');
        $rows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($objPHPExcel->setActiveSheetIndex(0)->getHighestColumn());
        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++) {
            $kabupaten = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i);
            $qty = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i);
            $jumlah = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(2, $i);

            $dataInput = array(
                'IDKABUPATEN' => $kabupaten,
                'QTY' => $qty,
                'JUMLAH' => $jumlah
            );
            $this->lokasipemberdayaantkklansiaModel->add($dataInput);
        }
        redirect('DirektoratPTKDN/LokasiPemberdayaanTKKLansia');
    }
}