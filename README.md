# A-Card API

## Application

This application is the back-end API for the A-Card Expense management portal. It is built using Ruby on Rails with an integrated PostgreSQL database. MVC layers for the expense resource  performing CRUD operations on a PostgreSQL database have been scaffolded for the expense and station resources. The application is current at the version 2 stage of API build development where a station can have many expenses. Therefore, the station id field is added as a foreign key constraint in the expenses table, where a station references an expense.

## Technologies Used

- Ruby
- Rails Framework
- Heroku cloud hosting application
- PostgreSQL database

## Unsolved Problems

1) Have to figure out a way to create the many-many relationship between cards and stations with an expense table as the common factor linking the two entities.
2) Serialize required output from the many-many relationship while generating migrations for the resulting new schema.

## Planning, Process and Problem Solving

1) Set up Rails API template, deployed successfully to Heroku and received verification on ERDs.
2) Generated the scaffold for the expense resource which created the MVC layers for the Minimum Viable Product. I had included the price and net_total as required fields for my expense model, and as parameters to my expenses controller as was necessary to achieve the schema outlined in my expense resource ERD.
3) Following the creation of the station resource layers, I found that it was unnecessary to persist with the price and net_total fields in my expense schema. Therefore, I generated migrations to remove these fields as can be observed.
4) Expenses controller inherits from ProtectedController in order to ensure that each action has required user authorization.
5) Ensured that index action in Expenses controller was user specific so that each A-card subscriber has unique access to his/her own records. Sorted these records by descending order of id so that latest transaction can appear at the top of the grid.
6) Stations controller inherits from OpenReadController so that each user can easily read up to date station data without the need for any authentication, as gas station rates are public and do not have user ownership.
7) Created appropriate relationship to the user and station in expense model where an expense belongs_to users and stations. Similarly, a station has_many expenses and a user has_many expenses.
8) Serialized output based on relationships between entities.
9) After running every successive migration in my Rails API,I would run the migration to update the PostgreSQL database hosted on heroku.
10) Created Stations data in SQL backend of deployed heroku postgreSQL database to include Shell, Sunoco, BP and Wawa with appropriate petrol and diesel prices.

I found it particularly challenging recollecting the details behind the establishment of the one-many relationship between two entities. I had to reference a lot of online documentation, including the rails-api-cookbook-lab and rails-api-one-to-many docs. After a lot of educated searching and playing around in the rails console, I was able to understand the specificities of the one-many relationship. However, once this was done, the rest was fairly straight forward.

### Client Repository

https://github.com/axb6452/A-CardClient

### ERD

https://files.acrobat.com/a/preview/d38cbbff-dc25-456b-bd52-c38710e06e55

### Route Catalog

- resources :stations, except: %i[new edit]
- resources :expenses, except: %i[new edit]
- resources :users, only: %i[index show update]
- post '/sign-up' => 'users#signup'
- post '/sign-in' => 'users#signin'
- delete '/sign-out' => 'users#signout'
- patch '/change-password' => 'users#changepw'

### Dependency Installation

- Run 'rbenv install 2.4.1' on command terminal of project directory (Bundler exists in this ruby version).
- Change Gemfile Ruby version to 2.4.1 to match the version installed.
- Install required gems using the 'bundle install' command.

### Deployed Paths

- Server deployed path: https://infinite-spire-29940.herokuapp.com
- Client deployed path: https://axb6452.github.io/A-CardClient
