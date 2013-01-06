Video Store refactoring exercise in ruby
========================================

This repo is the starting point of Martin Fowler's videostore refactoring example in Ruby. The following requirements have already been implemented.

A customer can printout his statement. On the statement must appear:
- The customer's name
- Each movie he rents, with its price
- The total amount owed
- The frequent renters point he's earned

For each movie category, some rules apply:
Regular movies:
- amount is $2.00 for the first 2 days
- an extra $1.50 is added for each additional day
- you get 1 frequent renter point

New releases:
- amount is $3.00 per day rented
- you get 1 frequent renter point for the first day
- you get 1 extra frequent renter point if you rent more than a day

Children's movies:
- amount is $1.50 for the first 3 days
- an extra $1.50 is added for each additional day
- you get 1 frequent renter point

Challenge
=========

Refactor the existing code for the following new requirements:
- print an HTML customer statemnt.
- add an extra category with it's own rules