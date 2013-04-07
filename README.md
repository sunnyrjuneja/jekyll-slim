# Jekyll-slim

A gem that adds [slim-lang](http://slim-lang.com) support to [Jekyll](http://github.com/mojombo/jekyll). Works for for pages, includes and layouts.

## Installation

Add this line to your Gemfile:

    gem 'jekyll-slim'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-slim

In your Jekyll project's `_plugins` directory:

    # _plugins/bundler.rb
    require 'rubygems'
    require 'bundler/setup'
    Bundler.require(:default)

## Usage

The gem will convert all the `.slim` files in your project's directory into HTML. That includes files in sub-directories, includes and layouts. Example:

```
# _layouts/default.slim
html
  head
  body
    .content-wrapper
      | {{ content }}
```


```
# index.slim
---
layout: default
---

section.content
  | {% include footer.slim %}

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
