<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class pemenuhantkbyprovinsiModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_chart_data($opt) {
        $this->db->select("a.IDPEMENUHAN ,a.IDTAHUN, a.IDPROVINSI,b.NAMAPROVINSI NAMA, a.JUMLAH");
        $this->db->from('pemenuhantkbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.IDTAHUN', $opt);
        $query = $this->db->get();
        $results['chart_data'] = $query->result();

        $this->db->select_min("NAMAPROVINSI");
        $this->db->from('pemenuhantkbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.idtahun', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->NAMAPROVINSI;

        $this->db->select_max("NAMAPROVINSI");
        $this->db->from('pemenuhantkbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.idtahun', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->NAMAPROVINSI;
        return $results;
    }

    public function record_count() {
        return $this->db->count_all("pemenuhantkbyprovinsi");
    }
    function getDetailPKByProvinsi($limit=null,$offset=NULL){
        $this->db->select("a.IDPEMENUHAN,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('pemenuhantkbyprovinsi a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }

    public function totalDetailPKByProvinsi() {
        return $this->db->count_all_results("pemenuhantkbyprovinsi");
    }

    function getDetailPKByProvinsiSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDPEMENUHAN,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('pemenuhantkbyprovinsi a');
        $this->db->limit($limit, $offset);
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }

    public function totalDetailPKByProvinsiSearch($key) {
        $this->db->select("a.IDPEMENUHAN,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('pemenuhantkbyprovinsi a');
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->count_all_results();
        return $query;
    }

    function AddDetailPKByProvinsi($data)
    {
        $this->db->insert('pemenuhantkbyprovinsi', $data);
    }

}