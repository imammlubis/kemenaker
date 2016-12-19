<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class DetailLKByJenisKelaminModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
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
    function Add($data)
    {
        $this->db->insert('lokerbyjeniskelamin', $data);
    }
}