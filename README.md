Pokemon Cards App

To run:
    - Get the source code: 
        git clone https://github.com/nshakoori/pokemon.git
    - Go to project's directory: 
        cd pokemon
    - Install redis
        ```bash
        brew install redis
        brew services start redis
        ```
    - Install gems:
        bundle install
    - Run migrations:
        rails db:migrate
    - Run rails's server
        rails s
    - Run sidekiq server
        bundle exec sidekiq
    - Go to localhost:3000

Notes:
    - I used Sidekiq to create workers to create and delete backups
    - One improvement to implement is a progress bar to show after user clicks on Create Backup