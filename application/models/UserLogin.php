<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @author scorpion
 */
class UserLogin extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function getUser($slug = FALSE) {
        $this->db->select("uuid, user_id, name, email, contact, reg_time, duration, course");
        $query = $this->db->get_where("users", array("user_id" => $slug["user"],
            "password" => $slug["password"],
            "status" => "Active"), 1
        );
        return $query->result_array();
    }

    public function fetchPassword($user_id) {
        $this->db->select("password");
        $query = $this->db->get_where("users", array("uuid" => $user_id));
        return $query->result_array();
    }

    public function changePassword($user_id, $password){
        $this->db->where(array("uuid" => $user_id));
        $this->db->update("users", array("password" => $password));
        return ($this->db->affected_rows() > 0);
    }
}
