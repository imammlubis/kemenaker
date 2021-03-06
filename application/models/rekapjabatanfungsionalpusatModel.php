<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');
/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 11/12/2016
 * Time: 3:16
 */
class rekapjabatanfungsionalpusatModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_chart_data() {
        $this->db->select("NAMAPUSAT, 2D AS DUAD, 3A AS TIGAA, 3B AS TIGAB, 3C AS TIGAC, 3D AS TIGAD, 4A AS EMPATA, 4B AS EMPATB, 4C AS EMPATC, TOTAL");
        $this->db->from('rekapjabatanfungsionalpusat');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['chart_data'] =  $query->result();

        $this->db->select_min("NAMAPUSAT");
        $this->db->from('rekapjabatanfungsionalpusat');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['min_year'] = $query->row()->NAMAPUSAT;

        $this->db->select_min("NAMAPUSAT");
        $this->db->from('rekapjabatanfungsionalpusat');
        $this->db->limit(1);
        $query = $this->db->get();
        $results['max_year'] = $query->row()->NAMAPUSAT;
        return $results;
    }
    public function record_count() {
        return $this->db->count_all("rekapjabatanfungsionalpusat");
    }
    function getRekapFungsionalPusat($limit=null,$offset=NULL){
        $this->db->select("NAMAPUSAT, 2D AS DUAD, 3A AS TIGAA, 3B AS TIGAB, 3C AS TIGAC, 3D AS TIGAD, 4A AS EMPATA, 4B AS EMPATB, 4C AS EMPATC, TOTAL");
        $this->db->from('rekapjabatanfungsionalpusat');
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }

    public function totalRekapFungsionalPusat() {
        return $this->db->count_all_results("rekapjabatanfungsionalpusat");
    }

    function getRekapFungsionalPusatSearch($limit=null,$offset=NULL, $key){
        $this->db->select("NAMAPUSAT, 2D AS DUAD, 3A AS TIGAA, 3B AS TIGAB, 3C AS TIGAC, 3D AS TIGAD, 4A AS EMPATA, 4B AS EMPATB, 4C AS EMPATC, TOTAL");
        $this->db->from('rekapjabatanfungsionalpusat');
        $this->db->like('NAMAPUSAT', $key);
        $this->db->limit($limit, $offset);
        $query = $this->db->get();
        return $query->result();
    }

    public function totalRekapFungsionalPusatSearch($key) {
        $this->db->select("NAMAPUSAT, 2D AS DUAD, 3A AS TIGAA, 3B AS TIGAB, 3C AS TIGAC, 3D AS TIGAD, 4A AS EMPATA, 4B AS EMPATB, 4C AS EMPATC, TOTAL");
        $this->db->from('rekapjabatanfungsionalpusat');
        $this->db->like('NAMAPUSAT', $key);
        $query = $this->db->count_all_results();
        return $query;
    }

    function AddRekapFungsionalPusat($data)
    {
        $this->db->insert('rekapjabatanfungsionalpusat', $data);
    }
}