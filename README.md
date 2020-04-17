# TippingGem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tipping_gem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tipping_gem

## Usage

TippingGem::Builder.new(total: 100, Tip: '18.5').generate # 118.5
TippingGem::Builder.new(total: 100, Tip: 'Five').generate # 105
TippingGem::Builder.new(total: 100, Tip: 'Ten').generate # 110
TippingGem::Builder.new(total: 100, Tip: 'Fifteen').generate # 115
TippingGem::Builder.new(total: 100, Tip: 'Twenty').generate # 118.5
TippingGem::Builder.new(total: 100, Tip: 100).generate # 200


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tipping_gem.
