<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 14:52
 */
class izinmempekerjakantkaberdasarkanjabatanModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("izinmempekerjakantkaberdasarkanjabatan");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("*");
        $this->db->from('izinmempekerjakantkaberdasarkanjabatan');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("izinmempekerjakantkaberdasarkanjabatan");
    }

    function add($data)
    {
        $this->db->insert('izinmempekerjakantkaberdasarkanjabatan', $data);
    }
}