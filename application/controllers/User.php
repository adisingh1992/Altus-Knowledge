<?php

defined("BASEPATH") OR exit("No direct script access allowed");

/**
 * @author scorpion
 */
class User extends CI_Controller {

    public function view($page = "home", $slug = NULL) {
        if (!file_exists(APPPATH . "views/user/" . $page . ".php")) {
            show_404();
        }

        if ($page === "login" && $this->session->userdata("user")) {
            redirect(base_url());
        }

        if ($page !== "login" && !$this->session->userdata("user")) {
            $this->session->set_userdata("redirect", $page);
            redirect(base_url() . "login");
        }

        $data["title"] = ucfirst($page);
        $data["msg"] = $this->session->flashdata("msg");
        $data["data"] = $slug;

        if ($this->session->userdata("user")) {
            $data["login"] = TRUE;
        } else {
            $data["login"] = FALSE;
        }

        $this->load->view("templates/header", $data);
        $this->load->view("user/" . $page, $data);
        $this->load->view("templates/footer", $data);
    }

    public function login() {
        $this->view("login");
    }

    public function mytests() {
        $data["course"] = $this->session->userdata("user")["course"];
        $this->load->model("UserExams");
        $data["exams"] = $this->UserExams->getExams($data["course"]);

        $this->view("mytests", $data);
    }

    public function test($type = "mains", $exam_id = 0) {
        if ($exam_id === 0) {
            $this->session->set_flashdata("msg", "No Cheating, You cannot access this page directly!");
            redirect(base_url());
        }
        $data["user"] = $this->session->userdata("user");
        $data["c_id"] = $exam_id;
        $data["course"] = $this->session->userdata("user")["course"];
        $this->session->set_userdata("exam", $exam_id);
        $this->session->set_userdata("type", $type);
        $this->session->set_userdata("time", (time() + (11000)));

        $this->load->model("UserExams");
        $data["questions"] = $this->UserExams->getQuestions($exam_id, $type);

        $this->view("test", $data);
    }

    public function home() {
        $data["user"] = $this->session->userdata("user");
        $this->load->model("UserExams");
        $data["analysis"] = $this->UserExams->getResultAnalysis($data["user"]["uuid"]);
        $this->view("home", $data);
    }

    public function profile() {
        $user = $this->session->userdata("user");
        $this->view("profile", $user);
    }

    public function results($exam_id = 0) {
        if ($exam_id === 0) {
            $this->session->set_flashdata("msg", "No Cheating, You cannot access this page directly!");
            redirect(base_url());
        }
        $user_id = $this->session->userdata("user")["uuid"];
        $user = $this->session->userdata("user")["user_id"];
        $course = $this->session->userdata("user")["course"];

        $this->load->model("UserExams");
        $data["result"] = $this->UserExams->getUserResults($user_id, $exam_id);
        $marks = 0;
        if (!empty($data["result"])) {
            $marks = (($data["result"][0]["marks"]) * 4) - (($data["result"][0]["noq"]) - ($data["result"][0]["marks"]));
        }
        $data["c_id"] = $exam_id;
        $data["marks"] = $marks;
        $data["rankings"] = $this->UserExams->getRankData($course, $marks);
        $data["user"] = $user;
        $data["course"] = $course;

        $this->view("results", $data);
    }

    /* FORM PROCESSORS */

    public function authorize() {
        $this->form_validation->set_rules("user", "User-Id", "trim|required");
        $this->form_validation->set_rules("password", "Password", "trim|required");

        if ($this->form_validation->run() == TRUE) {
            $user = array(
                "user" => $this->input->post("user"),
                "password" => $this->input->post("password")
            );

            $this->load->model("UserLogin");
            $data = $this->UserLogin->getUser($user);

            if ($data) {
                $this->session->set_userdata("user", $data[0]);
                $page = $this->session->userdata("redirect");
                $this->session->set_userdata("redirect", "");
                redirect(base_url() . $page);
            } else {
                $this->session->set_flashdata("msg", "Invalid Username Or Password!");
                redirect(base_url() . "login");
            }
        } else {
            $this->login();
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        $this->session->set_flashdata("msg", "You Have Been Successfully Logged-Out!");
        $this->login();
    }

    public function noscript() {
        echo "<noscript><center><h1>"
        . "Oops! This is embarrassing, looks like you have Javascript disabled."
        . " It is essential for this site to render and function properly, "
        . "please enable it so that you can have a seamless experience."
        . "</h1></center>";
        echo "<center><h2>";
        echo anchor(base_url(), "Click Here, Once You Have Re-enabled Javascript To Go Back!!");
        echo "</h2></center></noscript>";
    }

    public function validateValue($value) {
//        if ($value[0] > 0 && $value[0] < 135) {
            return TRUE;
//        }
//        return FALSE;
    }

    public function calculateResult($answers, $exam_id, $type) {
        $solutions = $this->UserExams->getAnswers($exam_id, $type);
        $solutions = array_combine(array_column($solutions, "q_id"), array_column($solutions, "correct"));

        $marks = 0;

        foreach ($answers as $ans) {
            if ($this->validateValue($ans)) {
                ($solutions[$ans[0]] === $ans[1]) ? $marks++ : 0;
            }
        }
        return array("marks" => $marks, "noq" => count($answers));
    }

    public function submit() {
        $answers = $this->input->post("answers");

        if (empty($answers)) {
            $this->session->set_flashdata("msg", "You Cannot Submit An Empty Test, Please Try Again!");
            die(base_url() . "mytests");
        }

        $time = $this->session->userdata("time");
        $this->session->set_userdata("time", "");
        if (time() > $time) {
            $this->session->set_flashdata("msg", "You Exceeded The Time Limit For The Test, Please Try Again In Sometime!");
            die(base_url());
        }

        $user_id = $this->session->userdata("user")["uuid"];
        $exam_id = $this->session->userdata("exam");
        $type = $this->session->userdata("type");
        $this->session->set_userdata("exam", "");
        $this->session->set_userdata("type", "");

        $this->load->model("UserExams");

        $result = $this->calculateResult($answers, $exam_id, $type);

        $data = array("uuid" => $user_id, "c_id" => $exam_id, "solutions" => serialize($answers), "marks" => $result["marks"], "noq" => $result["noq"]);

        if ($this->UserExams->setUserSolutions($data, $type)) {
            $this->session->set_flashdata("msg", "Test Solutions Submitted Successfully!");
        } else {
            $this->session->set_flashdata("msg", "Oops, Something Went Wrong, Please Try Again!");
        }
        echo base_url();
    }

    function passwordCheck() {
        $user_id = $this->session->userdata("user")["uuid"];
        $password = $this->input->post("old");

        $this->load->model("UserLogin");
        $result = $this->UserLogin->fetchPassword($user_id);

        if ($password != $result[0]["password"]) {
            $this->form_validation->set_message('passwordCheck', 'Old password do not match!');
            return FALSE;
        }
        return TRUE;
    }

    function updatePassword() {
        $user_id = $this->session->userdata("user")["uuid"];
        $password = $this->input->post("new");

        $this->form_validation->set_rules("old", "Password", "trim|required|callback_passwordCheck");
        $this->form_validation->set_rules("new", "New Password", "trim|required");
        $this->form_validation->set_rules("confirm", "Confirm Password", "trim|required|matches[new]");

        if ($this->form_validation->run() == TRUE) {
            $this->load->model("UserLogin");
            return $this->UserLogin->changePassword($user_id, $password);
        }
        $this->profile();
    }

    function updatePicture() {
        $config['upload_path'] = ('./assets/images/profiles/');
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
        $config['file_name'] = ($this->session->userdata("user")["uuid"]);
        $config['file_ext_tolower'] = TRUE;
        $config['detect_mime'] = TRUE;
        $config['overwrite'] = TRUE;
        $config['max_size'] = 0;

        $checkfile = glob($config["upload_path"] . $config["file_name"] . ".*");
        if (!empty($checkfile)) {
            unlink($checkfile[0]);
        }
        $this->load->library('upload', $config);

        if ($this->upload->do_upload("picture")) {
            $data = $this->upload->data();
            $config_r['image_library'] = 'gd2';
            $config_r['source_image'] = $data['full_path'];
            $config_r['new_image'] = $data['full_path'];
            $config_r['width'] = 250;
            $config_r['height'] = 250;
            $config_r['maintain_ratio'] = TRUE;

            $this->load->library('image_lib', $config_r);
            if (!$this->image_lib->resize()) {
                die($this->image_lib->display_errors());
            }

            return TRUE;
        } else {
            $this->session->set_flashdata("msg", $this->upload->display_errors());
            return FALSE;
        }
    }

    public function update($slug) {
        switch ($slug) {
            case "password" :
                if ($this->updatePassword()) {
                    $this->session->set_flashdata("msg", "Password Updated Successfully!");
                    redirect(base_url() . "profile");
                }
                break;
            case "picture" :
                if ($this->updatePicture()) {
                    $this->session->set_flashdata("msg", "Profile Picture Updated Successfully!");
                }
                redirect(base_url() . "profile");
                break;
            default : break;
        }
    }

//    public function x() {
//        $this->load->model("UserExams");
//        if (($handle = fopen('./assets/1.csv', "r")) !== FALSE) {
//            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
//                $marks = explode("-", $data[0]);
//                $ranks = explode("-", $data[1]);
////                echo $marks[0] . $marks[1] ."&nbsp;";
////                echo $ranks[0] . $ranks[1] ."<br/>";
//                $this->UserExams->insert($marks[0], $marks[1], $ranks[0], $ranks[1], "NEET");
//            }
//            fclose($handle);
//        }
//    }
//    public function x() {
//        $this->load->model("UserExams");
//        if (($handle = fopen('./assets/1.csv', "r")) !== FALSE) {
//            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
////                echo $data[0] . $data[1] ."<br/>";
//                $this->UserExams->insert_questions($data[1]);
//            }
//            fclose($handle);
//        }
//    }
//
//    public function x() {
//        $dir = "./assets/images/questions/NEET/11/";
//        $count = 1;
//        $c = 91;
//        foreach (array_filter(glob("$dir*.JPG"), "is_file") as $f) {
////            rename ($f, "$dir/$c.JPG");
//            $count++;
//            $c++;
//        }
//        if ($handle = opendir('./assets/images/questions/NEET/11')) {
//            $dir = "./assets/images/questions/NEET/11/";
//            $count = 1;
//            $c = 91;
//            while (false !== ($fileName = readdir($handle))) {
//                if($fileName != "." or $fileName != ".."){
//                    $newName = explode(".", $fileName)[0] + 90;
//                    $newName = $newName . ".JPG";
//                    echo $fileName . " To " . $newName . "<br/>";
//                    rename($dir.$fileName, $dir.$newName);
//                    sleep(.5);
//                    $count++;
//                    $c++;                    
//                }
//            }
//            closedir($handle);
//        }
//    }

}
