# Project 4 Walkthrough
----
#### Created: 18 February 2017 13:46
#### Last Updated: 18 February 2017 13:46
----

1. Add `firstname` and `last_name` to `user` model

	```bash
	rails g migration AddFirst_nameAndLast_nameToUsers first_name:string 	last_name:string
	```

2. Migrate to schema

	```bash
	rails db:migrate
	```

3. Updated authentications_controller.rb to include both first_name & last_name in the strong params
4. Successfully tested that additional fields can be populated, and are present in the database using Insomnia and Rails console
5. Add new model for Surveys

	```Bash
	rails g model Survey title:string code:string 	user:references started:date finished:date
	```
6. Migrate to schema

	```bash
	rails db:drop db:create db:migrate
	```

7. Create controller for Surveys

	```bash
	rails g controller surveys index show create update destroy
	```
	



	