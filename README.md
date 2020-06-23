# Ruby on Rails on YugabyteDB

This is an example to use YugabyteDB as backend storage layer of Ruby on Rails app.

```console
$ bundle
$ docker-compose up -d # launch YugabyteDB instances in laptop
$ bundle exec rails db:migrate
$ bundle exec rails c
Running via Spring preloader in process 80596
Loading development environment (Rails 6.0.3.2)
irb(main):001:0> Rails.cache.fetch("User.first") { User.first }
  User Load (26.0ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
/Users/hiroki.komurasaki/.anyenv/envs/rbenv/versions/2.7.1/lib/ruby/gems/2.7.0/gems/redis-activesupport-5.2.0/lib/active_support/cache/redis_store.rb:85: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/Users/hiroki.komurasaki/.anyenv/envs/rbenv/versions/2.7.1/lib/ruby/gems/2.7.0/gems/activesupport-6.0.3.2/lib/active_support/cache.rb:739: warning: The called method `initialize' is defined here
=> #<User id: 1, email: "user-0@example.com", name: "user-0", gender: 0, created_at: "2020-06-23 13:34:12", updated_at: "2020-06-23 13:34:12">
irb(main):002:0> Rails.cache.fetch("User.first") { User.first }
=> #<User id: 1, email: "user-0@example.com", name: "user-0", gender: 0, created_at: "2020-06-23 13:34:12", updated_at: "2020-06-23 13:34:12">
```

