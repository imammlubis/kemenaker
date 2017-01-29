<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 15/12/2016
 * Time: 0:03
 */
class lokasipengembanganruangpelayananModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function record_count() {
        return $this->db->count_all("lokasipengembanganruangpelayanan");
    }
    function getLokasi($limit=null,$offset=NULL){
        $this->db->select("a.IDRINCIAN, b.NAMAPROVINSI, c.NAMAKABUPATEN, a.SKPD, a.TAHUN");
        $this->db->from('lokasipengembanganruangpelayanan a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->join("kabupaten c", "a.idkabupaten = c.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }


    public function totalLokasi() {
        return $this->db->count_all_results("lokasipengembanganruangpelayanan");
    }

    function getLokasiSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDRINCIAN, b.NAMAPROVINSI, c.NAMAKABUPATEN, a.SKPD, a.TAHUN");
        $this->db->from('lokasipengembanganruangpelayanan a');
        $this->db->limit($limit, $offset);
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->join("kabupaten c", "a.idkabupaten = c.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }


    public function totalLokasiSearch($key) {
        $this->db->select("a.IDRINCIAN, b.NAMAPROVINSI, c.NAMAKABUPATEN, a.SKPD, a.TAHUN");
        $this->db->from('lokasipengembanganruangpelayanan a');
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $this->db->join("kabupaten c", "a.idkabupaten = c.idkabupaten", "left");
        $query = $this->db->count_all_results();
        return $query;
    }


    function AddLokasi($data)
    {
        $this->db->insert('lokasipengembanganruangpelayanan', $data);
    }
}