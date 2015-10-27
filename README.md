Boilerplate for new Sinatra projects.

####Setup Instructions:

This consists of Sinatra, sqlite3 in the backend and the usual Bootstrap, Bootstrap JASNY, jQuery on the front end. Comes with a stock
bootstrap example.

 - Clone the repo
 - Install `bundler`, `ruby-2.2.2`, `sqlite3` and `rerun`
 - Copy `config/database.yml.example` into `config/database.yml`
 - Copy `.env.example` into `.env`
 - `bundle install`
 - `rake db:migrate`
 - In a new tab on the terminal, `rerun 'rackup -p 4000'`
 - Navigate to `localhost:4000`

####Development Specific:
It's recommended to install EditorConfig for your editor to maintain consistent coding styles.

For ST3: https://packagecontrol.io/packages/EditorConfig
