<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 12:51
 */
class pendayagunaantksModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pendayagunaantks");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDPENDAYAGUNAATKS, a.PAKET, a.TARGET, a.REALISASI, b.NAMAPROVINSI, a.TAHUN");
        $this->db->from('pendayagunaantks a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("pendayagunaantks");
    }

    function add($data)
    {
        $this->db->insert('pendayagunaantks', $data);
    }
}