Twitter App Cookbook
====================
[![Cookbook Version](https://img.shields.io/cookbook/v/twitter-app.svg)][cookbook]
[![Build Status](https://img.shields.io/travis/RoboticCheese/twitter-app-chef.svg)][travis]
[![Code Climate](https://img.shields.io/codeclimate/github/RoboticCheese/twitter-app-chef.svg)][codeclimate]
[![Coverage Status](https://img.shields.io/coveralls/RoboticCheese/twitter-app-chef.svg)][coveralls]

[cookbook]: https://supermarket.chef.io/cookbooks/twitter-app
[travis]: https://travis-ci.org/RoboticCheese/twitter-app-chef
[codeclimate]: https://codeclimate.com/github/RoboticCheese/twitter-app-chef
[coveralls]: https://coveralls.io/r/RoboticCheese/twitter-app-chef

A Chef cookbook to install the official Twitter app.

Requirements
============

This cookbook offers a recipe-based and a resource-based install. Use of the
resource requires that you open a `mac_app_store` resource prior in your Chef
run.

Usage
=====

Either add the default recipe to your run_list, or implement the resource in
a recipe of your own.

Recipes
=======

***default***

Opens the Mac App Store and performs a simple install of the app.

Resources
=========

***twitter_app***

Used to perform installation of the app.

Syntax:

    twitter_app 'default' do
        action :install
    end

Actions:

| Action     | Description     |
|------------|-----------------|
| `:install` | Install the app |

Attributes:

| Attribute  | Default        | Description          |
|------------|----------------|----------------------|
| action     | `:install`     | Action(s) to perform |

Providers
=========

***Chef::Provider::TwitterApp***

Provider for handling installation of the app.

Contributing
============

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add tests for the new feature; ensure they pass (`rake`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

License & Authors
=================
- Author: Jonathan Hartman <j@p4nt5.com>

Copyright 2015 Jonathan Hartman

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
