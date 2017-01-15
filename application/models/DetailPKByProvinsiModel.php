<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailPKByProvinsiModel extends  CI_Model
{
//    /private $tabel = 'detailpkbyprovinsi a' + ' join provinsi b on ' + 'a.IDPROVINSI = b.IDPROVINSI';

    function __construct()
    {
        parent::__construct();
    }
    function get_chart_data() {
        //$query = $this->db->get($this->tabel);
        //$query = select("a.IDDETAIL,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH from FROM detailpkbyprovinsi a left JOIN provinsi b on a.IDPROVINSI = b.IDPROVINSI");
        $this->db->select("a.IDDETAIL ,a.IDTAHUN, a.IDPROVINSI,b.NAMAPROVINSI NAMA, a.JUMLAH");
        $this->db->from('detailpkbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.IDTAHUN', '2015');
        $query = $this->db->get();
        $results['chart_data'] = $query->result();

//        $this->db->select_min('NAMAPROVINSI');
//        $this->db->limit(1);
//        $query = $this->db->get($this->tabel);
//        $results['min_year'] = $query->row()->NAMAPROVINSI;

        $this->db->select_min("NAMAPROVINSI");
        $this->db->from('detailpkbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.idtahun', '2015');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->NAMAPROVINSI;

//        $this->db->select_max('b.NAMAPROVINSI');
//        $this->db->limit(1);
//        $query = $this->db->get($this->tabel);
//        $results['max_year'] = $query->row()->NAMAPROVINSI;

        $this->db->select_max("NAMAPROVINSI");
        $this->db->from('detailpkbyprovinsi a');
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->where('a.idtahun', '2015');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->NAMAPROVINSI;
        return $results;
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