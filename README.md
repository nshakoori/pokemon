Pokemon Cards App

To run:
    - Get the source code: 
        git clone https://github.com/nshakoori/pokemon-cards.git
    - Go to project's directory: 
        cd pokemon-cards
    - Install redis
        ```bash
        brew install redis
        brew services start redis
        ```
    - Install gems:
        bundle install
    - Run rails's server
        rails s
    - Run sidekiq server
        bundle exec sidekiq
    - Go to localhost:3000
