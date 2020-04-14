# LunarCalendar

Convert Solar Date to Lunar Date

## Reference

* Table data from [isee15/Lunar-Solar-Calendar-Converter](https://github.com/isee15/Lunar-Solar-Calendar-Converter)
* Calculate discussion from [https://destiny.to/](https://destiny.to/ubbthreads/ubbthreads.php/ubb/showflat/Number/92769/site_id/1#import)

## Data Structure

### LunarCalendar::Data::NEW_YEARS

Each value stores the Chinese New Year date in solar calendar

| Name | Length
|------|--------
| Year | 12 bit
| Month | 4 bit
| Day  | 5 bit

### LunarCalendar::Data::LEAP_MONTHS

Each value stores the month days and leap month

| Name | Length | Description
|------|--------|--------------
| Leap Month | 4 bit | `0` means this year no leap month
| Months | 12 bit | `1` is 30 days and `0` is 29 days

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lunar_calendar'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install lunar_calendar

## Usage

```ruby
LunarCalendar.at_lunar(2020, 1, 1)
# => #<LunarCalendar::Lunar @year=2019 @month=12 @day=7>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elct9620/lunar_calendar. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/elct9620/lunar_calendar/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the LunarCalendar project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/elct9620/lunar_calendar/blob/master/CODE_OF_CONDUCT.md).
