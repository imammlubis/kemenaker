<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 15/12/2016
 * Time: 1:28
 */
class RekapitulasiPengadaanModel extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function record_count() {
        return $this->db->count_all("rekapitulasi_pengadaan_sarana_bursa_kerja_online");
    }
    function get($limit=null,$offset=NULL){
        $this->db->select("a.IDREKAPITULASI,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('rekapitulasi_pengadaan_sarana_bursa_kerja_online a');
        $this->db->limit($limit, $offset);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }

    public function total() {
        return $this->db->count_all_results("rekapitulasi_pengadaan_sarana_bursa_kerja_online");
    }
    function getSearch($limit=null,$offset=NULL, $key){
        $this->db->select("a.IDREKAPITULASI,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('rekapitulasi_pengadaan_sarana_bursa_kerja_online a');
        $this->db->limit($limit, $offset);
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->get();
        return $query->result();
    }

    public function totalSearch($key) {
        $this->db->select("a.IDREKAPITULASI,b.NAMAPROVINSI,a.IDTAHUN,a.JUMLAH");
        $this->db->from('rekapitulasi_pengadaan_sarana_bursa_kerja_online a');
        $this->db->like('b.NAMAPROVINSI', $key);
        $this->db->join("provinsi b", "a.idprovinsi = b.idprovinsi", "left");
        $query = $this->db->count_all_results();
        return $query;
    }

    function add($data)
    {
        $this->db->insert('rekapitulasi_pengadaan_sarana_bursa_kerja_online', $data);
    }
}