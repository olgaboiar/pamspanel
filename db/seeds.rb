User.create(username: "adminuser", email: "admin@test.com", password: "123123", role: "admin", userpic: "")
User.create(username: "studentuser", email: "stud@test.com", password: "123123", role: "student", userpic: "")
User.create(username: "instructoruser", email: "inst@test.com", password: "123123", role: "instr", userpic: "")



Instructor.create(first_name: "Bill", last_name: "Zuckerborg", email: "billz@test.com", phone: "6461234519", user_id: nil, userpic: "", birthday: "02-03-1973", salary: 150000, education: "MA")
Instructor.create(first_name: "James", last_name: "Griffon", email: "james@test.com", phone: "6461234529", user_id: nil, userpic: "", birthday: "02-03-1972", salary: 140000, education: "MA")
Instructor.create(first_name: "Michelle", last_name: "Kennedy", email: "michelle@test.com", phone: "6461234539", user_id: nil, userpic: "", birthday: "02-03-1971", salary: 180000, education: "PHD")
Instructor.create(first_name: "Jessica", last_name: "Clinton", email: "jess@test.com", phone: "6461234549", user_id: nil, userpic: "", birthday: "02-03-1970", salary: 120000, education: "HS")


Course.create(title: "Anatomy and Figure Drawing", hours: 165, description: "This is an introduction to anatomy and figure drawing. After this course you will be able to draw a human form from any angle or pose, even without a reference", picture: "")
Course.create(title: "Charcoal Drawing", hours: 90, description: "This complete charcoal drawing course provides you with the 12 powerful but easy to learn techniques you need to create realistic drawings in charcoal, taking you from your first tentative fine lines in charcoal right through to creating your own fully rendered confident self portrait.", picture: "")


Cohort.create(name: "Pastels", class_type: "full", schedule: "everyday", classroom: "1", course_id: 1, start_date: "01-01-2018", end_date: "06-01-2018", instructor_id: 1, picture: "")
Cohort.create(name: "Oils", class_type: "part", schedule: "evenings", classroom: "2", course_id: 2, start_date: "02-01-2018", end_date: "04-01-2018", instructor_id: 2, picture: "")
Cohort.create(name: "Pencils", class_type: "part", schedule: "weekends", classroom: "2", course_id: 1, start_date: "03-01-2018", end_date: "08-01-2018", instructor_id: 3, picture: "")

Student.create(first_name: "Mike", last_name: "Smith", email: "mike@test.com", phone: "6461234561", user_id: nil, cohort_id: 1, birthday: "02-03-1984", education: "MA")
Student.create(first_name: "Tom", last_name: "Muller", email: "tom@test.com", phone: "6461234562", user_id:nil, cohort_id: 1, birthday: "02-03-1985", education: "HS")
Student.create(first_name: "Rachel", last_name: "Garcia", email: "rachel@test.com", phone: "6461234567", user_id: nil, cohort_id: 1, birthday: "02-03-1986", education: "PHD")
Student.create(first_name: "John", last_name: "Snow", email: "john@test.com", phone: "6461234563", user_id: nil, cohort_id: 2, birthday: "02-03-1987", education: "MA")
Student.create(first_name: "Dan", last_name: "Show", email: "dan@test.com", phone: "6461234564", user_id: nil, cohort_id: 2, birthday: "02-03-1988", education: "MA")
Student.create(first_name: "Sarah", last_name: "Baker", email: "sarah@test.com", phone: "6461234565", user_id: nil, cohort_id: 2, birthday: "02-03-1989", education: "PHD")
Student.create(first_name: "Ted", last_name: "Smith", email: "ted@test.com", phone: "6461234566", user_id: nil, cohort_id: 3, birthday: "02-03-1981", education: "MA")
Student.create(first_name: "Samantha", last_name: "Blasio", email: "samantha@test.com", phone: "6461234568", user_id: nil, cohort_id: 3, birthday: "02-03-1982", education: "HS")
Student.create(first_name: "Mike", last_name: "Larson", email: "mikel@test.com", phone: "6461234569", user_id: nil, cohort_id: 3, birthday: "02-03-1983", education: "MA")