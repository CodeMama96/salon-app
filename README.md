# README

This Ruby on Rails application is a Salon Booking Application for a user to be able to set up an appointment by the service and stylist, date and time. They can also view all services, all stylists and all appointments. Also be able to set an appointment by the service they choose. The application is modeling MVC (Model, Views, Controller). As well as RESTful Routing with actions in order to get each view page to be produced by the server(this can be done by running rails s in a new terminal). This application also is using log in and sign out functionality through the built in method password_digest through the gem 'bcrypt'. Lastly, this project is utilizing a third party log in/sign up called Google OAuth. 

# RUNNING LOCALLY
Fork
git clone git@github.com:CodeMama96/salon-app.git
cd salon-app

For OmniAuth, retrieve a secret and client ID from Google and add them to the .env file. DO NOT SHARE CODE.
* Check Ruby version
ruby '2.6.1'
* Install System Dependencies
bundle
yarn
gem 'bootstrap-sass', '3.3.7'
Webpack

* Database creation
rails db:create db:migrate db:seed

* Contributors Guide 
File an issue - Contact: weenum.alicia@gmail.com
Flatiron instructor: Jenn Hansen

* How to run the test suite
rails s for server
* Services (job queues, cache servers, search engines, etc.)
Might have to clear cookies and caches in order to get the Google log in to work
* Deployment instructions
In browser copy and paste localhost:3000 in order to get app up and running 

* Licensing 

Copyright <2021> <SalonApp>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


