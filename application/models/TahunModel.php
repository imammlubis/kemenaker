<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed, Hacking activity detected');

class TahunModel extends  CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function record_count() {
        return $this->db->count_all("tahun");
    }

    function AddTahun($data)
    {
        $this->db->insert('tahun', $data);
    }
}