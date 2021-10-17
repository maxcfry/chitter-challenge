Chitter Challenge
=================

How to use 
------------
1) Connect to `psql` and create the `chitter_manager` and `chitter_manager_test` databases:
2) CREATE DATABASE chitter_manager_test  &  CREATE DATABASE chitter_manager
 

3) Connect to the database using the pqsl command \c bookmark_manager;
4) To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

5) Create a test_database (such as 'chitter_manager_test'), and run the psql command for both databases ('chitter_manager' and 'chitter_manager_test'). The purpose of creating the test database is that it allows you to reset the contents of the database every time you run the tests.

Features:
-------

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

Reflection
----------

I found this wweekend challenge more fun than the others - but once I got stuck I found it impossible to progress further and could not identify the nature of the issue (there are about 6 errors thrown which started accumulating when trying to implement a sign up feature - which I attempted to complete by following a bookmark manager chapter on registration). The primary problem was that the instructions I followed required me to jump from chapter 11 or so (in the bookmark challenge) all the way to chapter 19 (and to gain some additional material from other chapters to write the data connection class). All of this made it difficult to keep track of which version I was following. 

I would like to have followed sequential chronological chapters - and simply would not have been capable of manually test-driving such a complex application. I don't knwo what I would do to complete the challenge expect to consult more online resources perhaps (but I found most online resources to be too far removed from the context of my problems). Additionally, it was difficult to get a grasp of the errors once they occurred because I didn't fully understand the program I was writing in any depth past a certain point. I suppose it would have helped to simplify the program where possible - but I am not sure how I would go about it.
