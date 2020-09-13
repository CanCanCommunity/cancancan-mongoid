# CanCanCan-Mongoid

[![Build Status](https://travis-ci.org/CanCanCommunity/cancancan-mongoid.svg?branch=master)](https://travis-ci.org/CanCanCommunity/cancancan-mongoid)

[![Code Climate](https://codeclimate.com/github/CanCanCommunity/cancancan-mongoid/badges/gpa.svg)](https://codeclimate.com/github/CanCanCommunity/cancancan-mongoid)

Mongoid adapter for the [CanCanCan](https://github.com/CanCanCommunity/cancancan) authorisation library to automatically generate database queries from ability rules.

## Requirements

* `Ruby >= 2.0.0` OR `JRuby >= 9.1`
* `Mongoid >= 3.0`

## Usage

In your `Gemfile`, insert the following line:

```ruby
gem 'cancancan'
gem 'cancancan-mongoid'
```

This is it. You can now call `accessible_by` on any Mongoid document (which is done automatically in the index action). 

You can also use the query syntax that Mongoid provides when defining the abilities.

```ruby
can :read, Article, :priority.lt => 5
```

This is all done through a [Model Adapter](https://github.com/CanCanCommunity/cancancan/blob/develop/docs/Model-Adapter.md). See that page for more information and how you can add your own.


## Bugs?

If you find a bug please add an [issue on GitHub](https://github.com/CanCanCommunity/cancancan-mongoid/issues) or fork the project and send a pull request.


## Development

This gem uses [appraisals](https://github.com/thoughtbot/appraisal) to test the code base against multiple versions of Mongoid.

To start developing, run:

```bash
bundle install
appraisal install
```

You can then run all appraisal files (like CI does), with `bundle exec appraisal rake` 
or just run a specific set `bundle exec appraisal mongoid_6.1 rake`.
