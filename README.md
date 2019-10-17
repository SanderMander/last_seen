# LastSeen
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'last_seen', git: 'https://github.com/SanderMander/last_seen'
```

And then execute:
```bash
$ bundle
```
Then install migrations:

```bash
$ rails last_seen:install:migrations
```
and execute them

```bash
$ rails db:migrate
```
Mount engine to your config/routes.rb:

```ruby
mount LastSeen::Engine => "/last_seen"
```

Start rails server:

```bash
$ rails s
```
Activities statistics available at:

```text
/last_seen/activities
```
## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
