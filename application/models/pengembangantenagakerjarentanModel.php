<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 24/12/2016
 * Time: 17:19
 */
class pengembangantenagakerjarentanModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    public function record_count() {
        return $this->db->count_all("pengembangantenagakerjarentan");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDPENGEMBANGAN, b.NAMAPROVINSI, a.JUMLAHPAKET, a.JUMLAHOUTPUT, a.JUMLAHPENDAMPING, a.TAHUN");
        $this->db->from('pengembangantenagakerjarentan a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.IDPROVINSI = b.IDPROVINSI", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function total() {
        return $this->db->count_all_results("pengembangantenagakerjarentan");
    }

    function add($data)
    {
        $this->db->insert('pengembangantenagakerjarentan', $data);
    }

}