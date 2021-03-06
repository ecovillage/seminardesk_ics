# SeminardeskICS

31 lines of ruby code to create a ics file from Seminardesks event api.

If anything goes wrong in the pipeline, everything goes wrong.

## Installation

Install the gem:

    $ gem install seminardesk_ics

or to include it library-style

```Gemfile
# Gemfile
gem 'seminardesk_ics', '~> 0.1.0'
```

## Usage

There is a one-of demo script, or you use the `SeminardeskICS::API` and
`SeminardeskICS::Converter` classes (they are like 10 lines of code :) ).

The script comes with a `--help` switch, though.

Run

    $ seminardesk_ics --help
    $ seminardesk_ics --url https://myurl --file result.ics

and pray.

Alternatively, check out the github repo, run `bundle` and

    $ bundle exec exe/seminardesk_ics

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ecovillage/seminardesk_ics. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/ecovillage/seminardesk_ics/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the SeminardeskIcs project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ecovillage/seminardesk_ics/blob/master/CODE_OF_CONDUCT.md).

## License

The code is published under the [AGPLv3+](LICENSE.txt) and Copyright 2021 Felix Wolfsteller.

---

---

## Knowledgebase

While ics files do the job, the [caldav](https://devguide.calconnect.org/Table-of-Contents) protocol allows for more advanced use
(and e.g. updates of single events, instead of republication of all events),
including user modifications.

However, full blown caldav implementations in ruby are rare and outdated.
A quick search only resulted in https://github.com/inferiorhumanorgans/meishi
and https://github.com/jbox-web/cervicale/tree/master/config and
https://github.com/schmurfy/dav4rack_ext .

Also, the main purpose of this script was to have a POC for integration into
nextcloud. Still have to figure out how often imported calenders are synced
there (if the ics adress is given as a URL).
