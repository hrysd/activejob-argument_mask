# ActiveJob::ArgumentMask

[![Build Status](https://travis-ci.org/hrysd/activejob-argument_mask.svg?branch=master)](https://travis-ci.org/hrysd/activejob-argument_mask)

This is [ActiveJob](https://github.com/rails/rails/tree/master/activejob) extension wich mask arguments of specified Job from ActiveJob's log file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activejob-argument_mask'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activejob-argument_mask

## Usage

You can specify job class which mask arguments in configuration.

- config/application.rb

```ruby
module App
  class Application < Rails::Application
    config.active_job_argument_mask.job_classes = %w(SensitiveJob)
  end
end
```

Output example:

```
[ActiveJob] [SensitiveJob] [3c6f7384-deae-4a7d-9387-7204a09b24e9] Performing SensitiveJob (Job ID: 3c6f7384-deae-4a7d-9387-7204a09b24e9) from Async(default) with masked arguments
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hrysd/activejob-argument_mask. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

