<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 13:56
 */
class lokasidanadroppingsektorjasadanindustrikreatifModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("lokasidanadroppingsektorjasadanindustrikreatif");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDSEKTORJASA, a.JUMLAHPAKET, a.TOTALDANAPERPAKET, a.TOTALDANA, b.NAMAKABUPATEN, a.TAHUN");
        $this->db->from('lokasidanadroppingsektorjasadanindustrikreatif a');
        $this->db->limit($limit, $offset);
        $this->db->join("KABUPATEN b", "a.IDKABUPATEN = b.IDKABUPATEN", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("lokasidanadroppingsektorjasadanindustrikreatif");
    }

    function getSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDSEKTORJASA, a.JUMLAHPAKET, a.TOTALDANAPERPAKET, a.TOTALDANA, b.NAMAKABUPATEN, a.TAHUN");
        $this->db->from('lokasidanadroppingsektorjasadanindustrikreatif a');
        $this->db->limit($limit, $offset);
        $this->db->join("KABUPATEN b", "a.IDKABUPATEN = b.IDKABUPATEN", "left");
        $this->db->like('b.NAMAKABUPATEN', $key);
        $query = $this->db->get();
        return $query->result();
    }
    public function totalSearch($key) {
        $this->db->select("a.IDSEKTORJASA, a.JUMLAHPAKET, a.TOTALDANAPERPAKET, a.TOTALDANA, b.NAMAKABUPATEN, a.TAHUN");
        $this->db->from('lokasidanadroppingsektorjasadanindustrikreatif a');
        $this->db->join("KABUPATEN b", "a.IDKABUPATEN = b.IDKABUPATEN", "left");
        $this->db->like('b.NAMAKABUPATEN', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function add($data)
    {
        $this->db->insert('lokasidanadroppingsektorjasadanindustrikreatif', $data);
    }
}