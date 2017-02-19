u1 = User.create!(email: "chris@chris.com", password: "password", first_name: "Chris", last_name: "Perry")
u2 = User.create!(email: "anne-marie@anne-marie.com", password: "password",  first_name: "Anne-Marie", last_name: "Perry")
u3 = User.create!(email: "tony@tony.com", password: "password",  first_name: "Tony", last_name: "Eccles")
u4 = User.create!(email: "sam@sam.com", password: "password",  first_name: "Sam", last_name: "Williams")
u5 = User.create!(email: "helen@helen.com", password: "password",  first_name: "Helen", last_name: "Davies")


s1 = u1.surveys.create!(title: "This is the first question")
s2 = u2.surveys.create!(title: "This is the second")
s3 = u1.surveys.create!(title: "And the third")
s4 = u3.surveys.create!(title: "Are we going on a photo walk?")
s5 = u4.surveys.create!(title: "Is there cheese involved?")
s6 = u5.surveys.create!(title: "When do we all want to go")
