<?php

defined('BASEPATH') OR exit('No direct script access allowed.');

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('string');
        $this->load->model('AdminDB');
        $this->load->library('form_validation');
    }

    public function view($page = 'AdminLogin', $data = FALSE) {
        if (!file_exists(APPPATH . 'views/admin/' . $page . '.php')) {
            show_404();
        }
        if ($page === 'modify_user') {
            $data['id'] = $this->AdminDB->fetch_data();
        }
        $data['mesg'] = $this->session->flashdata('mesg') or "";
        $data['title'] = 'Admin Portal';

        $statistics = $this->AdminDB->fetch_statistics();
        $data['all_students'] = $statistics['all_students'];
        $data['active_students'] = $statistics['active_students'];
        $data['jee_all_student1'] = $statistics['jee_all_student1'];
        $data['jee_active_student1'] = $statistics['jee_active_student1'];
        $data['jee_all_student2'] = $statistics['jee_all_student2'];
        $data['jee_active_student2'] = $statistics['jee_active_student2'];
        $data['neet_all_student'] = $statistics['neet_all_student'];
        $data['neet_active_student'] = $statistics['neet_active_student'];

        $this->load->view('templates/admin_header.php', $data);
        $this->load->view('admin/' . $page, $data);
        $this->load->view('templates/admin_footer.php', $data);
    }

    public function reg_form_validation() {
        $name = $this->input->post('user_name');
        $mail = $this->input->post('user_email');
        $cont = $this->input->post('user_contact');
        $course = $this->input->post('course');
        $duration = $this->input->post('duration');
        if ($course == 'NEET') {
            $duration = '2';
        }
        $this->form_validation->set_rules('user_name', 'User name', 'required');
        $this->form_validation->set_rules('user_email', 'Email Id', 'trim|required|valid_email');
        $this->form_validation->set_rules('user_contact', 'Contact number', 'required|is_numeric');
        $this->form_validation->set_rules('course', 'Course', 'required');
        if ($this->form_validation->run() == TRUE) {
            $firstname = explode(" ", $name, 2)[0];
            $user_id = (preg_replace("/[^a-zA-Z]+/", "", $firstname)) . '_' . random_string('alnum', 5);
            $user_pswd = str_shuffle(bin2hex(openssl_random_pseudo_bytes(5)));
            $data = array(
                'user_id' => $user_id,
                'password' => $user_pswd,
                'name' => $name,
                'email' => $mail,
                'contact' => $cont,
                'duration' => $duration,
                'course' => $course
            );
            if ($this->AdminDB->user_registration($data)) {
                $userdata = "User ID " . $user_id . " & Password " . $user_pswd;
                $this->session->set_flashdata('mesg', 'New student has been addded successfully!');
                $this->session->set_userdata('userData', $userdata);
                redirect(base_url() . 'admin/user_registration');
            }
        } else {
            $this->view('user_registration');
        }
    }

    public function authorizeAdmin() {
        $this->form_validation->set_rules('adminId', 'Id', 'required');
        $this->form_validation->set_rules('adminPswd', 'Password', 'required');
        if ($this->form_validation->run() == TRUE) {
            $this->load->model('AdminDB');
            $data = array(
                'adminId' => $this->input->post('adminId'),
                'adminPswd' => $this->input->post('adminPswd')
            );
            if ($this->AdminDB->admin_login($data['adminId'], $data['adminPswd'])) {
                $data['no_rows'] = array('title' => 'Admin Portal Altus Knowledge');
                $this->session->set_userdata('sessionId', $data['adminId']);
                redirect(base_url() . 'admin/AdminHome');
            } else {
                $this->session->set_flashdata('mesg', 'Invalid Log-In Credentials! Please Try Again.');
                $this->view();
            }
        } else {
            $this->view();
        }
    }

    public function viewResult($user_id) {
        $data["userdata"] = $this->AdminDB->fetchResult($user_id);
        $this->view('view_result', $data);
    }

    public function deleteUser($user_id) {
        if ($this->AdminDB->delete($user_id) == TRUE) {
            $this->session->set_flashdata('mesg', 'Student Data Deleted Successfully!');
            redirect(base_url() . 'admin/modify_user');
        } else {
            $this->session->set_flashdata('mesg', 'Oops! Something Went Wrong, please try again.');
            redirect(base_url() . 'admin/modify_user');
        }
        
    }
    
    public function logout() {
        $this->session->sess_destroy();
        redirect(base_url() . 'admin/');
    }

    public function modification() {
        $status = $this->input->post('status');
        $id = $this->input->post('userid');
        $data = array($id, $status);
        $this->load->model('AdminDB');
        if ($this->AdminDB->modification($data) == TRUE) {
            $this->session->set_flashdata('mesg', 'Student updated successfully.');
            redirect(base_url() . 'admin/modify_user');
        } else {
            $this->view('modify_user');
        }
    }

    public function search_Std() {
        $std_name = $this->input->post('std_name');
        $this->form_validation->set_rules('std_name', 'Student Name', 'required');
        if ($this->form_validation->run() == TRUE) {
            $this->load->model('AdminDB');
            $res['info'] = $this->AdminDB->search_Std($std_name);
            $this->view('modify_user', $res);
        }
    }

}
