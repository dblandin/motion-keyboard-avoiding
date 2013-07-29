# motion-keyboard-avoiding

## Usage

```ruby
def viewDidLoad
  super

  @keyboard_avoiding = Motion::KeyboardAvoiding.new(view)

  ...
  # configure text field(s)
  ...

  @text_field.delegate = @keyboard_avoiding
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'motion-keyboard-avoiding'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-keyboard-avoiding

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
