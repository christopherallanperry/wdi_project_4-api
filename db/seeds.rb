u1 = User.create!(email: "chris@chris.com", password: "password", first_name: "Chris", last_name: "Perry")
u2 = User.create!(email: "alex@alex.com", password: "password", first_name: "Alex", last_name: "Chin")
u3 = User.create!(email: "rane@rane.com", password: "password", first_name: "Rane", last_name: "Gowan")

s1 = u1.surveys.create!(title: "This is the first survey", code: "EADGB", user_id: 1, started: "Fri, 17 Feb 2017 00:00:00 +0000", finished: "Sat, 25 Feb 2017 00:00:00 +0000")


q1 = s1.questions.create!(question_type: "text", question_text: "What would you like to do next?")
q2 = s1.questions.create!(question_type: "integer", question_text: "The WDI course at GA is an excellent investment")
q3 = s1.questions.create!(question_type: "boolean", question_text: "Do you like Marmite?")

a1 = u2.answers.create!(question_id: 1, response: "Code until the wee small hours")
a2 = u2.answers.create!(question_id: 2, response: "3")
a3 = u2.answers.create!(question_id: 3, response: "true")
a4 = u1.answers.create!(question_id: 1, response: "Go to bed and sleep for a month")
a5 = u1.answers.create!(question_id: 2, response: "4")
a6 = u1.answers.create!(question_id: 3, response: "false")
a7 = u3.answers.create!(question_id: 1, response: "Buy more shoes")
a8 = u3.answers.create!(question_id: 2, response: "1")
a9 = u3.answers.create!(question_id: 3, response: "false")
