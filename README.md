# pt_papersize

Identify standard page sizes from PostScript point sizes. Based on info at:

http://en.wikipedia.org/wiki/Paper_size

## Installation

Add this line to your application's Gemfile:

  `gem 'pt_papersize'`

And then execute:

  `bundle`

Or install it yourself as:

  `gem install pt_papersize`

## Usage

```ruby
require 'pt/papersize'
papersize = PT::PaperSize.new(595,842)
pp papersize.name
```

## Contributing

1. Fork it ( https://github.com/pchilton/pt_papersize/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
