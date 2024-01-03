# README

Podcast Vault is a way to find the download links and save the metadata for podcasts you love. This lets you download the files for long-term storage and enjoyment.

This is a Ruby on Rails app that allows anyone to add an XML feed to a podcast and the app will attempt to fetch all the details and parse the podcast episode details in an easy to read way.

## TODOs:

- Update concept within jobs, if changes happen then capture them.
- A subscription for created Podcasts (how often to check? Maybe Daily).
- Lock down extra episode routes.
- Support logins, think about storage charges aka billing.

### Technical Details: 

* Ruby version: 3.2.2

* System dependencies: none at this point.

* Configuration:

Just run `bundle install` to install any gems.

* Database creation

`bin\rails db:create`

* Database initialization

There is a seed file with some basic episode info to show the layout `bin\rails db:seed`

* How to run the test suite

`rails test`

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
