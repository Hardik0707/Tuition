<?php

class Result_Model extends CI_Model {

    function __construct() {
        parent::__construct();

                $this->load->library('form_validation');
    }

    

    public function FetchStudentDetails($roll) {
        $this->db->where('roll_no',$roll);
        $this->db->select('*')->from('student_mst');
        $q = $this->db->get();
        return $q->result();
    }

    public function FetchTestSubjects($roll) {
        $this->db->where('roll_no',$roll);
        $this->db->select('*')->from('result');
        $this->db->group_by('subject');
        $this->db->order_by('subject');
        $q = $this->db->get();
        return $q->result();
    }

    public function FetchStudentsAllTest($roll) {
        $this->db->where('r.roll_no',$roll);
        $this->db->select('r.*,t.*,st.*,s.stud_name,GROUP_CONCAT(r.subject ORDER BY r.subject ASC) as subject_csv,GROUP_CONCAT(marks ORDER BY r.subject) as marks_csv');
        $this->db->from('result r');
        $this->db->join('test t', 't.id=r.test_id');
        $this->db->join('student_mst s', 's.roll_no=r.roll_no');
        $this->db->join('standard_mst st', 'st.standard_id=r.standard_id');
        $this->db->group_by('r.test_id');
        $this->db->order_by('r.test_id, r.subject');
        $result = $this->db->get();
        return $result->result();
    }

    

}
?>




