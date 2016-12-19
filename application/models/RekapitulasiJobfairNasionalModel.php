<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 15/12/2016
 * Time: 1:54
 */
class RekapitulasiJobfairNasionalModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("rekapitulasijobfairnasional");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("*");
        $this->db->from('rekapitulasijobfairnasional');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("rekapitulasijobfairnasional");
    }

    function add($data)
    {
        $this->db->insert('rekapitulasijobfairnasional', $data);
    }
}