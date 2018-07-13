<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class AdminDB extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function user_registration($data) { // Store new student's info into DB
        $query = $this->db->get_where("users", array("email" => $data["email"]));
        if ($query->num_rows() > 0) {
            $this->session->set_flashdata('mesg', 'A user with this email already exists, please try a different one!');
            redirect(base_url() . 'admin/user_registration');
        } elseif ($this->db->insert("users", $data)) {
            return true;
        }
    }

    public function fetch_data() { // fetch student's data
        $query = $this->db->query('SELECT * FROM users ORDER BY uuid DESC');
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            $this->session->set_flashdata('mesg', 'No user exist in database. Register a new User.');
            redirect(base_url() . 'admin/adminHome');
        }
    }

    public function admin_login($id, $pswd) { // Authenticate admin
        $query = $this->db->get_where('admin', array('admin_id' => $id, 'admin_pswrd' => $pswd));
        if ($query->num_rows() > 0) {
            return true;
        }
        return false;
    }

    public function modification($data) { // Update student status (Active/Disable)
        $this->db->set('status', $data[1])
                ->where('user_id', $data[0])
                ->update('users');
        return true;
    }

    public function search_Std($param) { // Search student from DB
        $query = 'SELECT * FROM users WHERE name LIKE ?';
        $name = $param . "%";
        $res = $this->db->query($query, array("name" => $name));
        if ($res->num_rows() > 0) {
            return $res->result();
        }
    }

    public function fetch_statistics() { // fetch site's statistics for dashboard
        $query1 = $this->db->query("SELECT COUNT(*) AS db_rows FROM users")->result();
        $query2 = $this->db->query("SELECT COUNT(*) AS act_rows FROM users WHERE status = 'Active'")->result();
        $query3 = $this->db->query("SELECT COUNT(*) AS jee_all_user1 FROM users WHERE course = 'JEE' AND duration = '1'")->result();
        $query4 = $this->db->query("SELECT COUNT(*) AS jee_active_user1 FROM users WHERE course = 'JEE' AND duration = '1' AND status = 'Active'")->result();
        $query5 = $this->db->query("SELECT COUNT(*) AS jee_all_user2 FROM users WHERE course = 'JEE' AND duration = '2'")->result();
        $query6 = $this->db->query("SELECT COUNT(*) AS jee_active_user2 FROM users WHERE course = 'JEE' AND duration = '2' AND status = 'Active'")->result();
        $query7 = $this->db->query("SELECT COUNT(*) AS neet_all_user FROM users WHERE course = 'NEET'")->result();
        $query8 = $this->db->query("SELECT COUNT(*) AS neet_active_user FROM users WHERE course = 'NEET' AND status = 'Active'")->result();
        return array(
            "all_students" => $query1,
            "active_students" => $query2,
            "jee_all_student1" => $query3,
            "jee_active_student1" => $query4,
            "jee_all_student2" => $query5,
            "jee_active_student2" => $query6,
            "neet_all_student" => $query7,
            "neet_active_student" => $query8
        );
    }

    public function delete($user_id) {
        $this->db->select("uuid");
        $uuid = $this->db->get_where("users", array("user_id" => $user_id))->result_array()[0]["uuid"];
        $tables = array("users_solutions", "users");
        $this->db->delete($tables, array("uuid" => $uuid));
        return ($this->db->affected_rows() > 0);
    }
    
    public function fetchResult($user_id) {
        $this->db->select("uuid");
        $uuid = $this->db->get_where("users", array("user_id" => $user_id))->result_array()[0]["uuid"];
        $this->db->select("courses.c_id, marks, noq, type, DATE_FORMAT(start, '%d-%m') as start, DATE_FORMAT(end, '%d-%m') as end, category, type");
        $this->db->from("users_solutions");
        $this->db->where("users_solutions.uuid", $uuid);
        $this->db->join("courses", "users_solutions.c_id = courses.c_id");
        $query = $this->db->get();
        return $query->result_array();
    }
}