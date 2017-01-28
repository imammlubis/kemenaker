<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');
/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 11/12/2016
 * Time: 3:16
 */
class rekapjabatanfungsionaldaerahModel extends  CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    public function record_count() {
        return $this->db->count_all("rekapjabatanfungsionaldaerah");
    }
    function getRekapFungsionalDaerah($limit=null,$offset=NULL){
        $this->db->select("b.NAMAPROVINSI, a.2D AS DUAD, a.3A AS TIGAA, a.3B AS TIGAB, a.3C AS TIGAC, a.3D AS TIGAD, a.4A AS EMPATA, a.4B AS EMPATB, a.4C AS EMPATC, a.TOTAL");
        $this->db->from('rekapjabatanfungsionaldaerah a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function totalRekapFungsionalDaerah() {
        return $this->db->count_all_results("rekapjabatanfungsionaldaerah");
    }
    function getRekapFungsionalDaerahSearch($limit=null,$offset=NULL, $key){
        $this->db->select("b.NAMAPROVINSI, a.2D AS DUAD, a.3A AS TIGAA, a.3B AS TIGAB, a.3C AS TIGAC, a.3D AS TIGAD, a.4A AS EMPATA, a.4B AS EMPATB, a.4C AS EMPATC, a.TOTAL");
        $this->db->from('rekapjabatanfungsionaldaerah a');
        $this->db->limit($limit, $offset);
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }
    public function totalRekapFungsionalDaerahSearch($key) {
        $this->db->select("b.NAMAPROVINSI, a.2D AS DUAD, a.3A AS TIGAA, a.3B AS TIGAB, a.3C AS TIGAC, a.3D AS TIGAD, a.4A AS EMPATA, a.4B AS EMPATB, a.4C AS EMPATC, a.TOTAL");
        $this->db->from('rekapjabatanfungsionaldaerah a');
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->count_all_results();
        return $query;
    }

    function AddRekapFungsionalDaerah($data)
    {
        $this->db->insert('rekapjabatanfungsionaldaerah', $data);
    }
}