<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailLKByProvinsiModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_chart_data($opt) {
        $this->db->select("a.IDLOKER ,a.IDTAHUN, a.IDPROVINSI,b.NAMAPROVINSI NAMA, a.JUMLAH");
        $this->db->from('lokerbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.IDTAHUN', $opt);
        $query = $this->db->get();
        $results['chart_data'] = $query->result();

        $this->db->select_min("NAMAPROVINSI");
        $this->db->from('lokerbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.idtahun', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->NAMAPROVINSI;

        $this->db->select_max("NAMAPROVINSI");
        $this->db->from('lokerbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.idtahun', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->NAMAPROVINSI;
        return $results;
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