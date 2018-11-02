alter user 'root'@'localhost' identified with mysql_native_password by '1234'

-- Add user types (1 Time)
insert into user_types values("faculty", 5, 60, 1);
insert into user_types values("student", 2, 14, 10);

-- Add admin (1 Time)
insert into login values("admin", "password", "admin");

-- Add Student
insert into login values("gangwar99", "faad", "user");
insert into lib_users values("gangwar99", "Krish Gangwar", "tilak nagar", "student", '1999-09-06');

-- Add faculty
insert into login values("sejal90", "faad", "user");
insert into lib_users values("sejal90", "Sejal Sharma", "chandini chowk", "faculty", '1990-08-01');

-- Add Staff
insert into login values("ram01", "rams92", "staff");
insert into issue_staff values("ram01", "Ram Chandra Gupta", "shadipur", '1981-03-03');

-- Add Book 																		// Change       Author(s)            Publisher
insert into lib_book values("b1", "Database System Concepts", "Computer Science", 1024, "GF-20-A", "Korth & Sudarshan", "Mc Graw Hill Educations"); -- rack format [floor]-[rack]-[col]

-- Add issue 												Make Due Date Acc. to User Type Add 13 for Student and 59 for faculty
insert into issues (bookId, copyNo, userId, issueDate, dueDate, issueStaffId) values("b1", 1, "gangwar99", '2018-11-01', '2018-11-14', "ram01");