# Jekyll-slim

[![Gem Version](https://badge.fury.io/rb/jekyll-slim.png)](http://badge.fury.io/rb/jekyll-slim)

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

## Credit

Jekyll-slim was heavily inspired by [jekyll-haml](https://github.com/samvincent/jekyll-haml). It is free software, and may be redistributed under the terms specified in the LICENSE file.

