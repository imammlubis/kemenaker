<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 21/12/2016
 * Time: 7:21
 */
class lokasipemberdayaantkkmudaModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("lokasipemberdayaantkkmuda");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDLOKASIPEMBERDAYAANTKK, b.NAMAKABUPATEN, a.QTY, a.JUMLAH");
        $this->db->from('lokasipemberdayaantkkmuda a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("lokasipemberdayaantkkmuda");
    }

    function getSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDLOKASIPEMBERDAYAANTKK, b.NAMAKABUPATEN, a.QTY, a.JUMLAH");
        $this->db->from('lokasipemberdayaantkkmuda a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $this->db->like('b.NAMAKABUPATEN', $key);
        $query = $this->db->get();
        return $query->result();
    }
    public function totalSearch($key) {
        $this->db->select("a.IDLOKASIPEMBERDAYAANTKK, b.NAMAKABUPATEN, a.QTY, a.JUMLAH");
        $this->db->from('lokasipemberdayaantkkmuda a');
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $this->db->like('b.NAMAKABUPATEN', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function add($data)
    {
        $this->db->insert('lokasipemberdayaantkkmuda', $data);
    }
}