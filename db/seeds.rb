User.destroy_all
Question.destroy_all
Answer.destroy_all

u1 = User.create!(email: "chris@wdi24.com", password: "password", first_name: "Chris", last_name: "Perry", image: "chris.jpg")
u2 = User.create!(email: "alex@wdi24.com", password: "password", first_name: "Alex", last_name: "Chin")
u3 = User.create!(email: "rane@wdi24.com", password: "password", first_name: "Rane", last_name: "Gowan")
u4 = User.create!(email: "remyce@wdi24.com", password: "password", first_name: "Remyce", last_name: "Wilson", image: "remyce.jpg")
u5 = User.create!(email: "davinder@wdi24.com", password: "password", first_name: "Davinder", last_name: "Kaur", image: "davinder.jpg")
u6 = User.create!(email: "jos@wdi24.com", password: "password", first_name: "Josceline", last_name: "O'Sullivan", image: "jos.jpg")
u7 = User.create!(email: "klaudia@wdi24.com", password: "password", first_name: "Klaudia", last_name: "Rozgonyiova", image: "Klaudia.jpg")
u8 = User.create!(email: "aleks@wdi24.com", password: "password", first_name: "Aleksandra", last_name: "Mikolajczyka", image: "aleks.jpg")
u9 = User.create!(email: "richardh@wdi24.com", password: "password", first_name: "Richard", last_name: "Hayim", image: "richardh.jpg")
u10 = User.create!(email: "richards@wdi24.com", password: "password", first_name: "Richard", last_name: "Sinclair", image: "richards.jpg")
u11 = User.create!(email: "rainey@wdi24.com", password: "password", first_name: "Rainey", last_name: "David", image: "rainey.jpg")
u12 = User.create!(email: "jackf@wdi24.com", password: "password", first_name: "Jack", last_name: "Fuller", image: "jackf.jpg")
u13 = User.create!(email: "jackm@wdi24.com", password: "password", first_name: "Jack", last_name: "Matthews", image: "jackm.jpg")
u14 = User.create!(email: "tom@wdi24.com", password: "password", first_name: "Tom", last_name: "Duckworth", image: "tom.jpg")
u15 = User.create!(email: "sarah@wdi24.com", password: "password", first_name: "Sarah", last_name: "Mendham", image: "sarah.jpg")
u16 = User.create!(email: "musty@wdi24.com", password: "password", first_name: "Musty", last_name: "Miah", image: "musty.jpg")
u17 = User.create!(email: "danesh@wdi24.com", password: "password", first_name: "Danesh", last_name: "Madarbakus")
u18 = User.create!(email: "henry@wdi24.com", password: "password", first_name: "Henry", last_name: "Davies", image: "henry.jpg")
u19 = User.create!(email: "sharon@wdi24.com", password: "password", first_name: "Sharon", last_name: "Wong", image: "sharon.jpg")
u20 = User.create!(email: "ismael@wdi24.com", password: "password", first_name: "Ismael", last_name: "Chairi", image: "ismael.jpg")
u21 = User.create!(email: "luca@wdi24.com", password: "password", first_name: "Luca", last_name: "Scanu", image: "luca.jpg")
u22 = User.create!(email: "hudhayfa@wdi24.com", password: "password", first_name: "Hudhayfa", last_name: "Jamalkhan", image: "hudhayfa.jpg")
u23 = User.create!(email: "james@wdi24.com", password: "password", first_name: "James", last_name: "Bremner", image: "james.jpg")
u24 = User.create!(email: "jamie@wdi24.com", password: "password", first_name: "Jamie", last_name: "Grantham-Burton", image: "jamie.jpg")
u25 = User.create!(email: "jean-marc@wdi24.com", password: "password", first_name: "Jean-Marc", last_name: "McGhee", image: "jean-marc.jpg")
u26 = User.create!(email: "ragini@wdi24.com", password: "password", first_name: "Ragini", last_name: "Dua", image: "ragini.jpg")
u27 = User.create!(email: "ali@wdi24.com", password: "password", first_name: "Ali", last_name: "Molloy", image: "ali.jpg")
u28 = User.create!(email: "charlie@wdi24.com", password: "password", first_name: "Charlie", last_name: "Gavins", image: "charlie.jpg")
u29 = User.create!(email: "klarissa@wdi24.com", password: "password", first_name: "Klarissa", last_name: "Munz", image: "klarissa.jpg")
u30 = User.create!(email: "ed@wdi24.com", password: "password", first_name: "Ed", last_name: "Compton", image: "ed.jpg")
u31 = User.create!(email: "ebere@wdi24.com", password: "password", first_name: "Ebere", last_name: "Nwoko", image: "ebere.jpg")
u32 = User.create!(email: "johnnie@wdi24.com", password: "password", first_name: "Johnnie", last_name: "de La Moriniere")
u33 = User.create!(email: "steph@wdi24.com", password: "password", first_name: "Steph", last_name: "Robinson", image: "steph.jpg")
u34 = User.create!(email: "nat@wdi24.com", password: "password", first_name: "Natalie", last_name: "Huitson")
u35 = User.create!(email: "alfredo@wdi24.com", password: "password", first_name: "Alfredo", last_name: "Maria Milano")
u36 = User.create!(email: "casey@wdi24.com", password: "password", first_name: "Casey", last_name: "Nailer")
u37 = User.create!(email: "lauren@wdi24.com", password: "password", first_name: "Lauren", last_name: "Thomas")
u38 = User.create!(email: "laura@wdi24.com", password: "password", first_name: "Laura", last_name: "Hasting")
u39 = User.create!(email: "callum@wdi24.com", password: "password", first_name: "Callum", last_name: "Goodwilliam")

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
