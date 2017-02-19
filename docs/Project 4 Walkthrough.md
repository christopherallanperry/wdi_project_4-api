# Project 4 Walkthrough
----
#### Created: 18 February 2017 13:46
#### Last Updated: 18 February 2017 13:46
----

1. Add `firstname` and `last_name` to `user` model

	```Bash
	rails g migration AddFirst_nameAndLast_nameToUsers first_name:string 	last_name:string
	```

2. Migrate to schema

	```Bash
	rails db:migrate
	```

3. Updated authentications_controller.rb to include both first_name & last_name in the strong params
4. Successfully tested that additional fields can be populated, and are present in the database using Insomnia and Rails console
5. Add new model for Surveys

```Bash
rails g model Survey survey_title:string survey_code:string survey_owner:references survey_admin:references start_date:date finish_date:date
```


	