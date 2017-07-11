# The Bank - Tech Test

## What is this cool thing?

It's a program that models a bank account. A user can make deposits or withdrawals and print a statement.

## How do I get started?

Fork / clone the repo and run ```$ bundle install``` for the pre-requisites.

The program is designed to run from the repl, e.g. ```$irb``` or ```$ pry```

A typical user might walkthrough the program like this:

```
$ account = Account.new
$ account.deposit(1000)
$ account.deposit(2000)
$ account.withdraw(500)
$ account.statement
=>
"Date || Credit || Debit || Balance"
"11-07-2017 14:29 | 1000 | | 1000"
"11-07-2017 14:29 | 2000 | | 3000"
"11-07-2017 14:29 | | 500 | 2500"
```

## What were you thinking

Here's a sketch of the domain model used to keep the project on track:

![domain_model](https://github.com/bannastre/bank/blob/master/images/domain_model.jpg)

## How did you do it?

The program was built with Ruby v2.4.0

It was developed using TDD and the SOLID principles, using:
- RSpec v3.6.0
- Rubocop v0.49.1
- Simplecov v0.14.1

## Can I test it?

Run the unit tests with ```$ rspec```  
There's also a feature test running through a typical user's interactions; just run ```$ ruby feature_test.rb```
