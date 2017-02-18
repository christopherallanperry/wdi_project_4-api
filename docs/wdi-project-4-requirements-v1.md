# WDI Project 4 - Chris Perry
----
#### Created: 17 February 2017 09:45
#### Last Updated: 17 February 2017 09:45
----

## Project Summary:
The basic premise of the project is to create an user-friendly online survey tool, that also provides comprehensive tools to allow those running a survey to understand what both the response metrics and any 'narrative' context provided by users, are telling them.

## Key Features

- Simple end-user interface
- Anonymity for respondant's responses
- Graphical representation of results (including over time)
- Graphical representation of response rates
- Access to narrative responses
- Ability to select target audience on a group or individual basis
- Ability to create multiple question types
 - Text based
 - 1-5 single select (inc. n/a)
 - Binary select (yes/no)
 - Multi-select (inc. 'other' type for added context)

## Models

### users
#### Fields:
- email - string
- password_digest - string
- first_name - string
- last_name - string
- company_id (foreign\_key[companies])

#### Relationships:
- `has_many :companies`
- `belongs_to :company`
- `belongs_to: group`
- `has\_many :response_tracker`

### companies
#### Fields:
- company_name - string
- company_admin (foreign\_key[users])
- company_logo (image URL or upload)
- company_bio - text

#### Relationships:
- `has_many :users`
- `has_many :groups`
- `belongs_to :user`

### groups
#### Fields:
- group_name - string
- company_id (foreign\_key[companies])

#### Relationships:
- `belongs_to :company`
- `has_many :users`
- `has_many :surveys`

### surveys
#### Fields:
- survey\_title - string
- survey_code - string (randomly generated)
- survey\_owner (foreign\_key[users])
- survey\_admin (foreign\_key[users])
- start_date - date
- finish_date - date

#### Relationships:
- `belongs_to :group`
- `has_many :questions`
- `has_many :response_tracker`


### question_types (lookup table)
#### Fields:
- question_type - string

#### Relationships:
- Used by `questions` table as a lookup to populate its `question_type` field

### questions
#### Fields:
- survey_id (foreign\_key[surveys])
- question\_type  (foreign\_key[question_types])
- question\_text - text (500 char limit)

#### Relationships:
- `belongs_to :survey`
- `has_many :responses_text`
- `has_many :responses_boolean`
- `has_many :responses_number`
- `has_many :response_tracker`

### responses_text
#### Fields:
- question_id (foreign\_key[questions])
- response_text - text (500 char limit)

#### Relationships:
- `belongs_to :question`

### responses_number
#### Fields:
- question_id (foreign\_key[questions])
- response_number - integer

#### Relationships:
- `belongs_to :question`

### responses_boolean
#### Fields:
- question_id (foreign\_key[questions])
- response_boolean - boolean

#### Relationships:
- `belongs_to :question`

### response_tracker
#### Fields:
- user_id (foreign\_key[users])
- survey_id (foreign\_key[surveys])
- question_id (foreign\_key[questions])
- survey_completed - boolean
- question_answered - boolean

#### Relationships:
- `belongs_to :user`
- `belongs_to :question`
- `belongs_to :survey`

## Back-end Tools/Libraries
- Postgres
- Rails (API)
- BCrypt
- Active_Model_Serialzers

## Front-end Tools/Libraries
- Angular
- Angular Chart
- CSS


