# ChineseName

[![Build Status](https://travis-ci.org/graysonchen/chinese_name.svg?branch=master)](https://travis-ci.org/graysonchen/chinese_name)

Generate a Random Chinese Name

生成随机的中文姓名

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chinese_name'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chinese_name

## Usage

```
require 'chinese_name'

2.4.0 :001 > g = ChineseName.generate
 => #<ChineseName:0x007feed28f8221 @last_name="陈", @first_name="艺天", @full_name="陈艺天">
2.4.0 :002 > g.last_name
 => "陈"
2.4.0 :003 > g.first_name
 => "艺天"
2.4.0 :004 > g.full_name
 => "陈艺天"
2.4.0 :005 > g.to_s
 => "陈艺天"
2.4.0 :006 > "#{g}"
 => "陈艺天"
```

by command line

```
$ rand_chinese_name
雷严乒
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## reference

https://zh.wikipedia.org/wiki/Unicode

https://baike.baidu.com/item/Unicode

https://gist.github.com/shingchi/64c04e0dd2cbbfbc1350

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/graysonchen/chinese_name.

