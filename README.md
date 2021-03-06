# sevenwire-rubocop

Sevenwire shared Rubocop config.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'sevenwire-rubocop'
end
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  sevenwire-rubocop:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. sevenwire-rubocop will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.
