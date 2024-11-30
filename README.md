# README

This project to accompany a presentation about `git bisect`.

It has a bug introduced somewhere in the git history, regarding date formatting.

The branch `git-bisect-notes` has a script to use with `git bisect` to find the bug.

* Ruby version
3.3.6

* Configuration

```
bundle install --path vendor/bundle
```

* Database creation
```path
bin/rails db:migrate
```

* Database initialization
```path
bin/rails db:seed
```

* Deployment instructions
```
bin/rails server
```
