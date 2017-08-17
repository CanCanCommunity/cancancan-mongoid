# CanCanCan-Mongoid

**ATTENTION: Gem in development. Not working yet. Look at the build status to see which tests are failing and help us fixing them** 

[![Build Status](https://travis-ci.org/CanCanCommunity/cancancan-mongoid.svg?branch=master)](https://travis-ci.org/CanCanCommunity/cancancan-mongoid)

[![Code Climate](https://codeclimate.com/github/CanCanCommunity/cancancan-mongoid/badges/gpa.svg)](https://codeclimate.com/github/CanCanCommunity/cancancan-mongoid) 

This is the adapter for the [CanCanCan](https://github.com/CanCanCommunity/cancancan) authorisation
library to automatically generate SQL queries from ability rules.

Adds support for Mongoid >= 3.0

## Ruby Versions Supported

Ruby >= 2.2.0

JRuby >= 9.1

## Usage

In your `Gemfile`, insert the following line:

```ruby
gem 'cancancan'
gem 'cancancan-mongoid'
```
## Bugs?

If you find a bug please add an [issue on GitHub](https://github.com/CanCanCommunity/cancancan-mongoid/issues) or fork the project and send a pull request.


## Development

cancancan-mongoid uses [appraisals](https://github.com/thoughtbot/appraisal) to test the code base against multiple versions 
of Mongoid

When first developing, you may need to run `bundle install` and then `appraisal install`, to install the different sets.

You can then run all appraisal files (like CI does), with `appraisal rake` or just run a specific set `appraisal mongoid_6.1 rake`.
