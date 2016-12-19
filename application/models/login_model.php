<?php

class login_model extends CI_Model{
    function __construct()
    {
        parent::__construct();
    }

    public function get_user($username, $password){
        $this->db->select('*');
        $this->db->from('user_login');
        $this -> db -> where('user_name', $username);
        $this->db->where('user_password', MD5($password));
        $this->db->limit(1);
        $query=$this->db->get();
        if($query->num_rows()==1){
            return $query->result();
        }
        else{
            return false;
        }
    }

    public function dataPengguna($username){
        $this->db->select('*');
        $this->db->from('user_login');
        $this->db->where('user_name', $username);
        $this->db->limit(1);
        $query=$this->db->get();
        if($query->num_rows()==1){
            return $query->result();
        }
        else{
            return false;
        }
    }
}