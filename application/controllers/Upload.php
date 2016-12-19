<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Upload extends CI_Controller  {
    public function __construct() {
        parent::__construct();
    }

    function index()
    {
        $data ['main_content'] = 'Upload';
        $this->load->view('layout/MainLayout', $data);
    }

    function uploadExcel(){
        $file = $_FILES['upload']['tmp_name'];
        //load the excel library
        $this->load->library('excel');
        //read file from path
        $objPHPExcel = PHPExcel_IOFactory::load($file);
        //get only the Cell Collection
        $cell_collection = $objPHPExcel->getActiveSheet()->getCellCollection();

        //extract to a PHP readable array format
        /*
        foreach ($cell_collection as $cell) {
            $column = $objPHPExcel->getActiveSheet()->getCell($cell)->getColumn();
            $row = $objPHPExcel->getActiveSheet()->getCell($cell)->getRow();

            $data_value = $objPHPExcel->getActiveSheet()->getCell($cell)->getValue();
            print_r($data_value);
            print_r(",");
            //header will/should be in row 1 only.
            if ($row == 1) {
                $header[$row][$column] = $data_value;

            } else {
                $arr_data[$row][$column] = $data_value;

            }

        }
        */

        for ($i = 2; $i<=$objPHPExcel->setActiveSheetIndex(0)->getHighestRow(); $i++)
        {
            $dataVal = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $i)->getValue();
            $dataVal2 = $objPHPExcel->getActiveSheet()->getCellByColumnAndRow(1, $i)->getValue();
            print_r($dataVal);
            print_r("val1,");
            print_r($dataVal2);
            print_r("val2,");
        }
    }

}
