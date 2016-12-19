<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class detailpkbyjeniskelaminModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
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