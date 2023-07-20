******************************************************************************************************************

//Table for Admin
CREATE TABLE admin (
   Admin_id int(11) NOT NULL AUTO_INCREMENT,
   Admin_user varchar(50) NOT NULL,
   Admin_password varchar(50) NOT NULL,
   PRIMARY KEY (admin_id)
);

//Tuples for Admin table 
INSERT INTO admin (Admin_user, Admin_password) VALUES
                         ("admin@gmail.com", "admin");



*******************************************************************************************************************

//Table for Faculty
CREATE TABLE Teacher (
   T_id int(11) NOT NULL AUTO_INCREMENT,
   T_name varchar(30) NOT NULL,
   T_desg varchar(100) NOT NULL,
   T_sem varchar(10) NOT NULL,
   T_email varchar(255) NOT NULL,
   T_password varchar(75) NOT NULL,
   admin_id int NOT NULL,
   FOREIGN KEY (admin_id) REFERENCES admin(admin_id) ON DELETE CASCADE,
   PRIMARY KEY (T_id),
   UNIQUE KEY (T_email)
);

CREATE TABLE TeacherPhones (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	phone VARCHAR(15) NOT NULL, 
	teacherId INT NOT NULL REFERENCES teacher(T_id) ON DELETE CASCADE);

INSERT INTO teacherPhones(phone,teacherId) VALUES
			 (8917399363,1),
			 (7008798443,1),
			 (9437268679,2);

//Tuples for Faculty table
INSERT INTO Teacher (T_Name, T_desg, T_sem, T_email, T_password,Faculty_img) VALUES
                    ("jaganath padhy", " Professior", "vi", "jaganathpadhy@gmail.com","jp@12345", "jagannath.jpg"),
                    ("debender maharana", "Professor", "ii", "debendermaharana@gmail.com", "dm@12345", "dev.jpg"),
                    ("ashish ranjan dash", "Professor", "iv", "ashishranjandash@gmail.com", "ard@12345", "ashish.jpg"),
                    ("dhawleswar rao", "Assistant Professor", "v", "dhawleswarrao@gmail.com", "dr@12345", "dhaw.jpg"),
                    ("soumen chakarworth", "Assistant Professor", "vi", "soumenchakarworthy@gmail.com", "sc@12345", "soumen.jpg"),
                    ("nagapali jeevaratnam", "Assistant Professor", "v", "nagapalijeevaratnam@gmail.com", "nj@12345", "jeeva.jpg"),
                    ("santosh bhal", "Assistant Professor", "i", "santoshbhal@gmail.com", "sb@12345", "santosh.jpg"),
                    ("ashok mishra", "Assistant Professor", "iv", "ashokmishra@gmail.com", "am@12345", "ashok.jpg"),
                    ("balaji pady", "Assistant Professor", "i", "balajipady@gmail.com", "bp@12345", "balaji.jpg"),
                    ("rajen boss", "Assistant Professor", "vi", "rajenboss@gmail.com", "rb@12345", "rajen.jpg"),
                    ("rajesh mishra", "Assistant Professor", "vi", "rajeshmishra@gmail.com", "rm@12345", "rajesh.jpg");

UPDATE teacher SET admin_id = 1 WHERE T_id>0; 


******************************************************************************************************************

//Table for students

CREATE TABLE students (
   stu_id int(11) NOT NULL,
   stu_name char(40) NOT NULL,
   stu_email varchar(40) NOT NULL,
   stu_password varchar(40) NOT NULL,
   stu_class varchar(20) NOT NULL,
   stu_semester varchar(10) NOT NULL,
   stu_gender varchar(40) NOT NULL,
   stu_img varchar(50) NOT NULL,
   stu_dob date NOT NULL,
   admin_id int NOT NULL,
   FOREIGN KEY (admin_id) REFERENCES admin(admin_id) ON DELETE CASCADE,
   PRIMARY KEY (stu_id),
   UNIQUE KEY (stu_email)
);

CREATE TABLE studentPhones (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	phone VARCHAR(15) NOT NULL, 
	studentId INT NOT NULL REFERENCES student(stu_id) ON DELETE CASCADE);

INSERT INTO studentPhones(phone,studentId) VALUES
			 (9523426614,1),
			 (6205371592,1),
			 (7205724122,2);


//Tuples for students table
INSERT INTO students(stu_id,stu_name,stu_email,stu_password,stu_class,stu_semester,stu_gender,stu_img,stu_dob) VALUES
                    (96,"gopal","gk8456558@gmail.com","gk@12345","B.Tech","6th","m","gopal.jpg","2001-12-01"),
                    (69,"suresh","suresh123@gmail.com","ys@12345","B.Tech","6th","m","suresh.jpg","2002-02-15"),
                    (116"nikhil","nikhil123@yahoo.com","kn@12345","B.Tech","6th","m","nikhil.jpg","2002-09-13"),
                    (67,"ravikiran","ravi123@gmail.com","rk@12345,"B.Tech","6th","m","ravikiran.jpg","2002-08-17"),
                    (131,"sibobaroda","sibobaroda123@gmail.com","sb@12345","B.Tech","6th","m","sibobaroda.jpg","2002-08-18"),
                    (93,"priyam","priyam123@gmail.com","pr@12345","B.Tech","6th","m","priyam.jpg","2002-09-22"),
                    (94,"sonu","sonu123@gmail.com","sk@12345","B.Tech","6th","m","sonu.jpg","2002-08-25"),
                    (68,"saikiran","saikiran123@gmail.com","saik@123","B.Tech","6th","m","saikiran.jpg","2002-08-27");


UPDATE student SET admin_id = 1 WHERE stu_id>0;


***************************************************************************************************************************

//Table for feedback

CREATE TABLE Feedback (
   Feedback_id int(11) NOT NULL AUTO_INCREMENT,
   stu_id int(11) NOT NULL,
   T_id int(11) NOT NULL,
   Feedback_type varchar(50) NOT NULL,
   Qn1 enum ('5','4','3','2','1') NOT NULL,
   Qn2 enum ('5','4','3','2','1') NOT NULL,
   Qn3 enum ('5','4','3','2','1') NOT NULL,
   Qn4 enum ('5','4','3','2','1') NOT NULL,
   Qn5 enum ('5','4','3','2','1') NOT NULL,
   suggestion VARCHAR(200) NOT NULL, 
   PRIMARY KEY (Feedback_id),
   FOREIGN KEY (stu_id) REFERENCES students(stu_id) ON DELETE CASCADE,
   FOREIGN KEY (T_id) REFERENCES Teacher(T_id) ON DELETE CASCADE
);

//Tuples for Feedback table
INSERT INTO Feedback (stu_id, T_id,Feedback_type, Qn1,Qn2,Qn3,Qn4,Qn5,suggestions) VALUES
                     (12, 7, "Poor",5,4,3,3,1 "Teacher is good at explaining the subject matter"),
                     (14, 34, "Good",,4,3,5,3,5, "Course integrates throretical course concepts with the real world'),	
                     (16, 34, "Very Good",4,3,5,3,4, "Motivates to learn more and more"),
                     (15, 34, "Excellent",5,5,4,4,5, "Course Material insufficient"),
                     (17, 34, "Otstanding",4,4,5,5,5, "COurse material and content is good.");




*****************************************************************************************************************************************************************