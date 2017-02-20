u1 = User.create!(email: "chris@chris.com", password: "password", first_name: "Chris", last_name: "Perry")
u2 = User.create!(email: "anne-marie@anne-marie.com", password: "password",  first_name: "Anne-Marie", last_name: "Perry")
u3 = User.create!(email: "tony@tony.com", password: "password",  first_name: "Tony", last_name: "Eccles")
u4 = User.create!(email: "sam@sam.com", password: "password",  first_name: "Sam", last_name: "Williams")
u5 = User.create!(email: "helen@helen.com", password: "password",  first_name: "Helen", last_name: "Davies")

s1 = u1.surveys.create!(title: "This is the first question", code: "EADGB", user_id: 1, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")
s2 = u2.surveys.create!(title: "This is the second", code: "xyz", user_id: 2, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")
s3 = u1.surveys.create!(title: "And the third", code: "abcd", user_id: 1, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")
s4 = u3.surveys.create!(title: "Are we going on a photo walk?", code: "rem", user_id: 3, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")
s5 = u4.surveys.create!(title: "Is there cheese involved?", code: "acme001", user_id: 4, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")
s6 = u5.surveys.create!(title: "When do we all want to go", code: "YYZ", user_id: 5, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")

q1 = s1.questions.create!(question_type: "text", question_text: "What would you like to do next?", survey_id: 1)
q2 = s1.questions.create!(question_type: "text", question_text: "How would you like to do it?", survey_id: 1)
q3 = s1.questions.create!(question_type: "text", question_text: "Would you prefer it with bells on?", survey_id: 1)
q4 = s1.questions.create!(question_type: "text", question_text: "Should I slow down?", survey_id: 1)
q5 = s1.questions.create!(question_type: "text", question_text: "Or speed up?", survey_id: 1)
q6 = s2.questions.create!(question_type: "integer", question_text: "What would you like to do next?", survey_id: 2)
q7 = s2.questions.create!(question_type: "integer", question_text: "How would you like to do it?", survey_id: 2)
q8 = s2.questions.create!(question_type: "integer", question_text: "Would you prefer it with bells on?", survey_id: 2)
q9 = s2.questions.create!(question_type: "integer", question_text: "Should I slow down?", survey_id: 2)
q10 = s2.questions.create!(question_type: "integer", question_text: "Or speed up?", survey_id: 2)

a1 = q1.answers.create!(question_id: 1, response: "This is 1st response to Q2")
a2 = q1.answers.create!(question_id: 1, response: "This is 2nd response to Q1")
a3 = q1.answers.create!(question_id: 1, response: "This is 3rd response to Q1")
a4 = q1.answers.create!(question_id: 1, response: "This is 4th response to Q1")
a5 = q1.answers.create!(question_id: 1, response: "This is 5th response to Q1")
a6 = q1.answers.create!(question_id: 1, response: "This is 6th response to Q1")
a7 = q6.answers.create!(question_id: 6, response: "3")
a8 = q6.answers.create!(question_id: 6, response: "4")
a9 = q6.answers.create!(question_id: 6, response: "5")
a10 = q6.answers.create!(question_id: 6, response: "4")
a11 = q6.answers.create!(question_id: 6, response: "4")
a12 = q6.answers.create!(question_id: 6, response: "2")

c1 = u1.completions.create!(user_id: 1, survey_id: 1, question_id: 1, survey_completed: false, question_answered: true)
c1 = u1.completions.create!(user_id: 1, survey_id: 1, question_id: 6, survey_completed: false, question_answered: true)
c2 = u2.completions.create!(user_id: 2, survey_id: 1, question_id: 1, survey_completed: false, question_answered: true)
c2 = u2.completions.create!(user_id: 2, survey_id: 1, question_id: 6, survey_completed: false, question_answered: true)
