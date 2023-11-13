##Productivity Hub (Rails GraphQL API)
​
# Description
This is the GraphQL API, that provides the basic CRUD functionalities for the Tasks as well as the notes for specific user
​
# Key Points
​
- Rails GraphQL API, This API is created using **graphql** gem. This is the industry-standard gem that provides the ability to create the GraphQL API inside Ruby on Rails Framework
- It mainly supports 3 type of functionality
- Basic CRUD operations on TaskMaster, NoteGenius, Users.
- Users has many Tasks as well as Notes.  
​
# Stack
* [Ruby](https://www.ruby-lang.org/en/)
* [graphQL](https://rubygems.org/gems/graphql)
* [graphiQL](https://rubygems.org/gems/graphiql-rails/versions/1.4.8?locale=en)
​
------------
​
## Getting Started
To get a local copy up and running follow these simple steps.
### Prerequisites
* `ruby 2.7.7`
* `Rails 7.0.8`
### Installation
1. Clone the repository
2. Install the gems
`bundle install`
3. Setup the Database on localhost for data 
`rake db:create`
4. Check and run all the migration to setup the database with tables and their attrubutes
`rake db:migrate`
4. Populate the database with the seed file using command
`rake db:seed`
3. Start the server
`run the server on localhost port 3000`
If everything is setup correctly. You can visit the url **localhost:3000/graphiql** for the Graphical interface of GraphQL API. 
