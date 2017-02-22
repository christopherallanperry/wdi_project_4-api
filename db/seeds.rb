u1 = User.create!(email: "chris@chris.com", password: "password", first_name: "Chris", last_name: "Perry")
u2 = User.create!(email: "alex@alex.com", password: "password", first_name: "Alex", last_name: "Chin")

s1 = u1.surveys.create!(title: "This is the first survey", code: "EADGB", user_id: 1, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")


q1 = s1.questions.create!(question_type: "text", question_text: "What would you like to do next?")
q2 = s1.questions.create!(question_type: "integer", question_text: "What would you like to do next?")
q3 = s1.questions.create!(question_type: "boolean", question_text: "Or speed up?")

a1 = u2.answers.create!(question_id: 1, response: "This is 1nd response to Q1")
a2 = u2.answers.create!(question_id: 2, response: "yes")
a3 = u2.answers.create!(question_id: 1, response: "4")
