<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @author scorpion
 */
class UserExams extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function getExams($course) {
        $this->db->select("c_id, DATE_FORMAT(start, '%d-%m') as start, DATE_FORMAT(end, '%d-%m') as end, sub1, sub2, sub3");
        $query = $this->db->get_where("courses", array("category" => $course));
        return $query->result_array();
    }

    public function getQuestions($exam_id, $type) {
        $this->db->select("q_id, category");
        $query = $this->db->get_where("questions", array("c_id" => $exam_id, "type" => $type));
        return $query->result_array();
    }

    public function getAnswers($exam_id, $type) {
        $this->db->select("q_id, correct");
        $query = $this->db->get_where("questions", array("c_id" => $exam_id, "type" => $type));
        return $query->result_array();
    }

    public function setUserSolutions($data, $type) {
        $this->db->select("s_id");
        $query = $this->db->get_where("users_solutions", array(
            "uuid" => $data["uuid"],
            "c_id" => $data["c_id"],
            "type" => $type)
        );
        if ($query->num_rows() > 0) {
            $result = $query->result_array();
            $this->db->where(array("s_id" => $result[0]["s_id"]));
            $this->db->update("users_solutions", $data);
        } else {
            $this->db->insert("users_solutions", $data);
        }
        return ($this->db->affected_rows() > 0);
    }

    public function getUserResults($user_id, $exam_id) {
        $query = $this->db->get_where("users_solutions", array("c_id" => $exam_id, "uuid" => $user_id));
        return $query->result_array();
    }

    public function getResultAnalysis($user_id) {
        $this->db->select("COUNT(*) as count, DATE_FORMAT(start, '%d-%m') as start, DATE_FORMAT(end, '%d-%m') as end, marks, noq");
        $this->db->from("users_solutions");
        $this->db->limit(5);
        $this->db->where("users_solutions.uuid", $user_id);
        $this->db->join("courses", "users_solutions.c_id = courses.c_id");
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getRankData($course, $marks) {
        $this->db->select("mark1, mark2, rank1, rank2");
        $query = $this->db->get_where("rankings", array(
            "course" => $course,
            "mark1 <=" => $marks,
            "mark2 >=" => $marks
        ));
        return $query->result_array();
    }
    
//        public function insert($c1, $c2, $c3, $c4, $course) {
//        $this->db->insert("rankings", array(
//            "mark1" => $c1,
//            "mark2" => $c2,
//            "rank1" => $c3,
//            "rank2" => $c4,
//            "course" => $course
//        ));
//    }
//
//    public function insert_questions($correct){
//        $this->db->insert("questions", array(
//            "correct" => $correct,
//            "c_id" => "11",
//            "type" => "mains",
//            "category" => "Biology"
//        ));
//    }
}
