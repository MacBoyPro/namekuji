# Namekuji

[![Build Status](https://travis-ci.org/thetallgrassnet/namekuji.svg?branch=master)](https://travis-ci.org/thetallgrassnet/namekuji)
[![Dependency Status](https://gemnasium.com/thetallgrassnet/namekuji.svg)](https://gemnasium.com/thetallgrassnet/namekuji)
[![Code Climate](https://codeclimate.com/github/thetallgrassnet/namekuji/badges/gpa.svg)](https://codeclimate.com/github/thetallgrassnet/namekuji)
[![Coverage Status](https://coveralls.io/repos/github/thetallgrassnet/namekuji/badge.svg?branch=master)](https://coveralls.io/github/thetallgrassnet/namekuji?branch=master)

ORM-agnostic slug generator for ActiveModel. Include Namekuji in your Rails
models to give them friendly slug generation, with any ORM that supports
ActiveModel.

## How To Use

`Gemfile`:

```ruby
gem 'namekuji'
```

Create a model with a `string` field named `slug`, then add two lines to it:

```ruby
class Post < ActiveRecord::Base
  include Namekuji

  sluggable on_field: :title
end
```

```ruby
p = Post.create title: "My Latest Post"
p.slug # "my-latest-post"
p.to_param # "my-latest-post"
```

If you don't specify an `on_field`, the model's `to_s` method will be used.

If you want to name your slug column something else:

```ruby
sluggable slug_field: :parameterized
```
