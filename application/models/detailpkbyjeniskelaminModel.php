<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class detailpkbyjeniskelaminModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    function get_chart_data() {
        $this->db->select("IDDETAILJENISKELAMIN,IDTAHUN,PRIA, WANITA");
        $this->db->from('detailpkbyjeniskelamin');
        $this->db->where('IDTAHUN', '2015');
        $query = $this->db->get();
        $results['chart_data'] = $query->result();

        $this->db->select_min("IDTAHUN");
        $this->db->from('detailpkbyjeniskelamin');
        $this->db->where('IDTAHUN', '2015');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->IDTAHUN;

        $this->db->select_max("IDTAHUN");
        $this->db->from('detailpkbyjeniskelamin');
        $this->db->where('IDTAHUN', '2015');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->IDTAHUN;
        return $results;
    }

    public function record_count() {
        return $this->db->count_all("detailpkbyprovinsi");
    }
    function getDetailPKByJK($limit=null,$offset=NULL){
        $this->db->select("IDDETAILJENISKELAMIN,IDTAHUN,PRIA, WANITA");
        $this->db->from('detailpkbyjeniskelamin');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }

    public function totalDetailPKByJenisKelamin() {
        return $this->db->count_all_results("detailpkbyjeniskelamin");
    }


    function Add($data)
    {
        $this->db->insert('detailpkbyjeniskelamin', $data);
    }
}