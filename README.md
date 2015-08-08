# Automatiek

A gem to vendor other gems, for situations where dependency resolution just
isn't an option. Extracted from [Bundler](https://github.com/bundler/bundler)'s
Rakefile.

## Installation

    $ gem install automatiek

## Usage

In your `Rakefile`:

```ruby
require "automatiek"

Automatiek::RakeTask.new("molinillo") do |lib|
  lib.download = { :github => "https://github.com/CocoaPods/Molinillo" }
  lib.namespace = "Molinillo"
  lib.prefix = "Bundler"
  lib.vendor_lib = "lib/bundler/vendor/molinillo"
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/segiddins/automatiek. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
