<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 18:07
 */
class penempatanakadModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_chart_data($opt) {
        $this->db->select("*");
        $this->db->from('penempatanakad');
        $this->db->where('TAHUN', $opt);
        $query = $this->db->get();
        $results['chart_data'] = $query->result();

        $this->db->select_min("BULAN");
        $this->db->from('penempatanakad');
        $this->db->where('TAHUN', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->BULAN;

        $this->db->select_max("BULAN");
        $this->db->from('penempatanakad');
        $this->db->where('TAHUN', $opt);
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->BULAN;
        return $results;
    }
    public function sum() {
        $this->db->select_sum('TOTAL');
        $query = $this->db->get('penempatanakad');
        $result = $query->result();
        return $result[0]->TOTAL;
    }
    public function record_count() {
        return $this->db->count_all("penempatanakad");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("*");
        $this->db->from('penempatanakad a');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("penempatanakad");
    }


    function getSearch($limit=null,$offset=NULL, $key){
        $this->db->select("*");
        $this->db->from('penempatanakad a');
        $this->db->like('TAHUN', $key);
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function totalSearch($key) {
        $this->db->select("*");
        $this->db->from('penempatanakad a');
        $this->db->like('TAHUN', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function add($data)
    {
        $this->db->insert('penempatanakad', $data);
    }
}