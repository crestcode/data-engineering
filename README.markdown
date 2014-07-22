# Installation Instructions

This application relies the latest stable versions of Ruby (2.1.1) and Rails (4.1.1).

## To Install and Run:

1. Clone the git repository: 'git clone git@github.com:crestcode/data-engineering.git'
1. Navigate to the application's root directory: 'cd data-engineering'
1. Run 'bundle install'
1. Run 'rake db:migrate'
1. Run 'rake test' to verify all tests pass
1. Run 'rails s'
1. Point your web browser to 'http://localhost:3000'
1. Click the 'Choose File' button to select a properly formatted tab delimited data file
1. Click the 'Upload File' file to upload and import the data

# Challenge for Software Engineer - Big Data
To better assess a candidates development skills, we would like to provide the following challenge.  You have as much time as you'd like (though we ask that you not spend more than a few hours).

## Project Description
Imagine that your company just acquired a new company.  Unfortunately, the company has never stored their data in a database and instead uses a plain text file.  We need to create a way for the new subsidiary to import their data into a database.  Your task is to create a web interface that accepts file uploads, normalizes the data, and then stores it in a relational database.

Here's what your web-based application must do:

1. Your app must accept (via a form) a tab delimited file with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name.  You can assume the columns will always be in that order, that there will always be data in each column, and that there will always be a header line.  An example input file named example_input.tab is included in this repo.
1. Your app must parse the given file, normalize the data, and store the information in a relational database.
1. After upload, your application should display the total amount gross revenue represented by the uploaded file.

Your application does not need to:

1. handle authentication or authorization
1. be written with any particular language or framework
1. be aesthetically pleasing

Your application should be easy to set up and should run on either Linux or Mac OS X.  It should not require any for-pay software.

## Evaluation
Evaluation of your submission will be based on the following criteria. Additionally, reviewers will attempt to assess your familiarity with standard libraries. If your code submission is in Ruby, reviewers will attempt to assess your experience with object-oriented programming based on how you've structured your submission.

1. Did your application fulfill the basic requirements?
1. Did you document the method for setting up and running your application?
1. Did you follow the instructions for submission?
