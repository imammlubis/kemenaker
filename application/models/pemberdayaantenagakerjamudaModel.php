<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 1:45
 */
class pemberdayaantenagakerjamudaModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pemberdayaantenagakerjamuda");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDPEMBERDAYAANTKM, b.NAMAKABUPATEN, a.QTY, a.JUMLAH, a.TGLAWAL, a.TGLAKHIR, a.KETERANGAN");
        $this->db->from('pemberdayaantenagakerjamuda a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("pemberdayaantenagakerjamuda");
    }

    function add($data)
    {
        $this->db->insert('pemberdayaantenagakerjamuda', $data);
    }
}