type student = { first_name : string ; last_name : string ; gpa : float };;
let init_student:student = {first_name = "Bob"; last_name = "Ham"; gpa = 4.0};;
let student_name s = s.first_name;;
let create_student fn ln gpa = {first_name = fn; last_name = ln; gpa = gpa}