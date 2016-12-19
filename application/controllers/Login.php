<?php

/**
 * Created by IntelliJ IDEA.
 * User: imam lubis
 * Date: 12/12/2016
 * Time: 23:03
 */
class Login extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index()
    {
        //$this->load->helper(array('form'));
        $this->load->view('account/login');
    }
}