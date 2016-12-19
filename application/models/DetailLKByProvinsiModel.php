<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailLKByProvinsiModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("lokerbyprovinsi");
    }
    function getDetailLKByProvinsi($limit=null,$offset=NULL){
        $this->db->select("a.IDLOKER,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('lokerbyprovinsi a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function totalDetailLKByProvinsi() {
        return $this->db->count_all_results("lokerbyprovinsi");
    }
    function AddDetailLKByProvinsi($data)
    {
        $this->db->insert('lokerbyprovinsi', $data);
    }

}