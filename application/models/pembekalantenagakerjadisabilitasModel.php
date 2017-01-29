<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 2:03
 */
class pembekalantenagakerjadisabilitasModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pembekalantenagakerjadisabilitas");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDPEMBEKALAN, b.NAMAKABUPATEN, a.QTY, a.JUMLAH, a.TGLAWAL, a.TGLAKHIR, a.KETERANGAN");
        $this->db->from('pembekalantenagakerjadisabilitas a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("pembekalantenagakerjadisabilitas");
    }
    function getSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDPEMBEKALAN, b.NAMAKABUPATEN, a.QTY, a.JUMLAH, a.TGLAWAL, a.TGLAKHIR, a.KETERANGAN");
        $this->db->from('pembekalantenagakerjadisabilitas a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $this->db->like('b.NAMAKABUPATEN', $key);
        $query = $this->db->get();
        return $query->result();
    }
    public function totalSearch($key) {
        $this->db->select("a.IDPEMBEKALAN, b.NAMAKABUPATEN, a.QTY, a.JUMLAH, a.TGLAWAL, a.TGLAKHIR, a.KETERANGAN");
        $this->db->from('pembekalantenagakerjadisabilitas a');
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $this->db->like('b.NAMAKABUPATEN', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function add($data)
    {
        $this->db->insert('pembekalantenagakerjadisabilitas', $data);
    }
}