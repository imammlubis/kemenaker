<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 11:06
 */
class jumlahpptkisModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("jumlahpptkis");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("*");
        $this->db->from('jumlahpptkis a');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("jumlahpptkis");
    }
    function getSearch($limit=null,$offset=NULL, $key){
        $this->db->select("*");
        $this->db->from('jumlahpptkis a');
        $this->db->like('IDTAHUN', $key);
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function totalSearch($key) {
        $this->db->select("*");
        $this->db->from('jumlahpptkis a');
        $this->db->like('IDTAHUN', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function add($data)
    {
        $this->db->insert('jumlahpptkis', $data);
    }
}