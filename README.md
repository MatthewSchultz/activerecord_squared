# ActiverecordSquared
Tired of typing ```SomeModel.find_by(id: 12)```? Yeah man me too.

Even ```SomeModel.find(12)``` still a bit too long?

Wonder why you have to have 2 different methods for find and find_by, when it ought to be reasonably obvious which is called purely by the argument??

Man do we have the solution for you. Introducing...ActiveRecord...squared!...the gem that adds a class-level square bracket method to ActiveRecord objects!

What does it do? Now you can replace that with ```SomeModel[12]```. Also, you can, with zero added effort say: ```SomeModel[email_address: 'man_email_sucks@example.com']```! Revolutionary! You can even do a ```SomeModel[]``` to get everything. Stuff you could already do, but ... esier and more elegant! Great!

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activerecord_squared'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install activerecord_squared
```

## Usage
There are 2 main modes for this, and they are based on what is passed in the bracket:

Singular Identifier
: Either a string or integer (most likely) - similar to calling ```SomeModel.find()```. This is the default mode. One of the more interesting options here is the ability to call ```SomeModel[params[:id]]``` and get ... nil. Not an error, like you'd get with find, but nil.

Finder Hash
: Similar to calling ```SomeModel.find_by()```.

Of course, as this is ActiveRecord, they all return activerecord queries, not actual objects...and can thus be chained appropriately (though ... it's not terribly recommended - this is a shorthand - if you're gonna chain stuff, you probably want to be explicit).

## Contributing Guidelines
Loosely this: https://www.contributor-covenant.org/version/2/0/code_of_conduct/. If you actually need this stuff explained to you and aren't interested in just writing software and doing good stuff, please re-evaluate your life choices on that and return when you ... grow up.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). I mean, this is free-ass software. Use it, distribute it, build on it, contribute to it, do something ... kinky with it? I mean ... whatever floats your boat man ...
