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
