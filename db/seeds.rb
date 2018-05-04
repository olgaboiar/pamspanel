User.create(username: "adminuser", email: "admin@test.com", password: "123123", role: "admin", userpic: "")
User.create(username: "studentuser", email: "stud@test.com", password: "123123", role: "student", userpic: "")
User.create(username: "instructoruser", email: "inst@test.com", password: "123123", role: "instr", userpic: "")

Student.create(first_name: "Mike", last_name: "Smith", email: "mike@test.com", phone: "6461234567", user_id:, cohort_id: 1, birthday: , education: "MA")
Instructor.create
Cohort.create()
Course.create()
