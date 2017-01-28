<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');
/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 11/12/2016
 * Time: 12:17
 */
class lptksModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function record_count() {
        return $this->db->count_all("lptks");
    }
    function getLptks($limit=null,$offset=NULL){
        $this->db->select("a.IDLPTKS, b.NAMAPROVINSI, a.JUMLAH, a.TAHUN");
        $this->db->from('lptks a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }


    public function totalLptks() {
        return $this->db->count_all_results("lptks");
    }

    function getLptksSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDLPTKS, b.NAMAPROVINSI, a.JUMLAH, a.TAHUN");
        $this->db->from('lptks a');
        $this->db->limit($limit, $offset);
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }


    public function totalLptksSearch($key) {
        $this->db->select("a.IDLPTKS, b.NAMAPROVINSI, a.JUMLAH, a.TAHUN");
        $this->db->from('lptks a');
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->count_all_results();
        return $query;
    }

    function AddLptks($data)
    {
        $this->db->insert('lptks', $data);
    }
}