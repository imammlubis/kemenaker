<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 10:06
 */
class jumlahpenempatantkiModel  extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("jumlahpenempatantki");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("*");
        $this->db->from('jumlahpenempatantki a');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("jumlahpenempatantki");
    }

    function add($data)
    {
        $this->db->insert('jumlahpenempatantki', $data);
    }
}