<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 16:44
 */
class pembekalanmotivatorModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pembekalanmotivator");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDPEMBEKALANMOTIVATOR, b.NAMAPROVINSI, a.KUOTA, a.ANGKATAN1, a.ANGKATAN2, a.JUMLAH, a.SELISIHORANG, a.TAHUN");
        $this->db->from('pembekalanmotivator a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.IDPROVINSI = b.IDPROVINSI", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("pembekalanmotivator");
    }

    function add($data)
    {
        $this->db->insert('pembekalanmotivator', $data);
    }
}