<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 2:10
 */
class pembekalantklansiaModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pembekalantklansia");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDPEMBEKALANTKLANSIA, b.NAMAKABUPATEN, a.QTY, a.JUMLAH, a.TGLAWAL, a.TGLAKHIR");
        $this->db->from('pembekalantklansia a');
        $this->db->limit($limit, $offset);
        $this->db->join("kabupaten b", "a.idkabupaten = b.idkabupaten", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("pembekalantklansia");
    }

    function add($data)
    {
        $this->db->insert('pembekalantklansia', $data);
    }
}