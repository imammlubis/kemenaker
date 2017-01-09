<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailPKByProvinsiModel extends  CI_Model
{
    private $tabel = 'detailpkbyprovinsi';

    function __construct()
    {
        parent::__construct();
    }
    function get_chart_data() {
        $query = $this->db->get($this->tabel);
        $results['chart_data'] = $query->result();
        $this->db->select_min('performance_year');
        $this->db->limit(1);
        $query = $this->db->get($this->tabel);
        $results['min_year'] = $query->row()->performance_year;
        $this->db->select_max('performance_year');
        $this->db->limit(1);
        $query = $this->db->get($this->tabel);
        $results['max_year'] = $query->row()->performance_year;
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