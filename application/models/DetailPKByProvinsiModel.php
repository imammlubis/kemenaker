<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailPKByProvinsiModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function record_count() {
        return $this->db->count_all("detailpkbyprovinsi");
    }
    function getDetailPKByProvinsi($limit=null,$offset=NULL){
        $this->db->select("a.IDDETAIL,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('detailpkbyprovinsi a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }

    public function totalDetailPKByProvinsi() {
        return $this->db->count_all_results("detailpkbyprovinsi");
    }

    function AddDetailPKByProvinsi($data)
    {
        $this->db->insert('detailpkbyprovinsi', $data);
    }

}