# ActiverecordEternalValidator

It's a activerecord validator, which validates that value is not changed.  
It validates value only on update.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord_eternal_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord_eternal_validator

## Usage

```
class Person < ActiveRecord::Base
  validates :birthday, 'activerecord_eternal_validator/eternal': true
end

person = Person.create!(birthday: Date.new(1994, 7, 7))

person.birthday = Date.today
puts person.valid?
#=> false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/activerecord_eternal_validator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ActiverecordEternalValidator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/activerecord_eternal_validator/blob/master/CODE_OF_CONDUCT.md).
