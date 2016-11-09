# Welcome to the Scrapping API

The following API allows you to store the information contained in the anchors, h1, h2 and h3 tags of a web page. This API was created as a coding test exercise, and it's build using ruby 2.3.0 on rails 5. For the testing and checking on this API the Postman extension was used.

## Specifications

* Ruby 2.3.0
* Rails 5.0
* Sqlite

## Installation Process

Clone de repository

``$ git clone https://github.com/luis-vega/ScrappingTest ``

Install Gems

``$ bundle install``

Migrate the database

``$ rails db:create``
``$ rails db:migrate``

And finally, run rails server

``rails s``

## Running the tests

The Scrapping API has some automatic test on it. To run them, open a terminal, go to the directory where the API is storage and run rails test. There are two test in this preliminary version of the API, the first one checks if the url is entered in the correct format e.g. "http://google.com". The other one checks if the scrapping is working as it's supposed to be, for this test a defined number of anchors and h1 tag is set, and the test compares the number of anchors and h1 tags scrapped with the set number for this parameters.