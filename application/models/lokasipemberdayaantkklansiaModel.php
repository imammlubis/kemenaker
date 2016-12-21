<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 21/12/2016
 * Time: 7:55
 */
class lokasipemberdayaantkklansiaModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("lokasipemberdayaantkklansia");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDTKKLANSIA, b.NAMAKABUPATEN, a.QTY, a.JUMLAH");
        $this->db->from('lokasipemberdayaantkklansia a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("lokasipemberdayaantkklansia");
    }

    function add($data)
    {
        $this->db->insert('lokasipemberdayaantkklansia', $data);
    }
}