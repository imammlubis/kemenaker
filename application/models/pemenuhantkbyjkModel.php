<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class pemenuhantkbyjkModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pemenuhantkbyjk");
    }
    function getDetailPKByJK($limit=null,$offset=NULL){
        $this->db->select("IDPEMENUHANTKBYJK,IDTAHUN,PRIA, WANITA");
        $this->db->from('pemenuhantkbyjk');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }

    public function totalDetailPKByJenisKelamin() {
        return $this->db->count_all_results("pemenuhantkbyjk");
    }

    function Add($data)
    {
        $this->db->insert('pemenuhantkbyjk', $data);
    }

}