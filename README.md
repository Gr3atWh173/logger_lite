# LoggerLite

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'logger_lite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logger_lite

## Usage

```ruby
require 'logger_lite'

# Specify the filename
filename = "log.txt"

# Specify a mode
mode = "write" # or "append"

# This is optional
startmsg = "Start of logging"
 
# Create a new logger object
logger = LoggerLite::Logger.new(filename, mode, startmsg)

# Log a normal thing
logger.log("Normal thing happened")

# Log a warning
logger.log("Feels like something bad is about to happen")

# Log an error
logger.log("Something bad happened")

# Close the logging session
logger.end_session("End of an era")

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Gr3atWh173/logger_lite. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

