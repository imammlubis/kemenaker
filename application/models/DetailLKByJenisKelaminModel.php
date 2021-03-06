<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailLKByJenisKelaminModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_chart_data($opt) {
        $this->db->select("IDLOKERJK,IDTAHUN,PRIA, WANITA");
        $this->db->from('lokerbyjeniskelamin');
        $this->db->where('IDTAHUN', $opt);
        $query = $this->db->get();
        $results['chart_data'] = $query->result();

        $this->db->select_min("IDTAHUN");
        $this->db->from('lokerbyjeniskelamin');
        $this->db->where('IDTAHUN', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->IDTAHUN;

        $this->db->select_max("IDTAHUN");
        $this->db->from('lokerbyjeniskelamin');
        $this->db->where('IDTAHUN', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->IDTAHUN;
        return $results;
    }

    public function record_count() {
        return $this->db->count_all("lokerbyjeniskelamin");
    }
    function getDetailPKByJK($limit=null,$offset=NULL){
        $this->db->select("IDLOKERJK,IDTAHUN,PRIA, WANITA");
        $this->db->from('lokerbyjeniskelamin');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function totalDetailPKByJenisKelamin() {
        return $this->db->count_all_results("lokerbyjeniskelamin");
    }
    function getDetailPKByJKSearch($limit=null,$offset=NULL, $key){
        $this->db->select("IDLOKERJK,IDTAHUN,PRIA, WANITA");
        $this->db->from('lokerbyjeniskelamin');
        $this->db->like('IDTAHUN', $key);
        $this->db->limit($limit, $offset);

        $query = $this->db->get();
        return $query->result();
    }
    public function totalDetailPKByJenisKelaminSearch($key) {
        $this->db->select("IDLOKERJK,IDTAHUN,PRIA, WANITA");
        $this->db->from('lokerbyjeniskelamin');
        $this->db->like('IDTAHUN', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function Add($data)
    {
        $this->db->insert('lokerbyjeniskelamin', $data);
    }
}