# README

This project to accompany a presentation about `git bisect`.

It has a bug introduced somewhere in the git history, regarding date formatting.

The branch `git-bisect-notes` has a script to use with `git bisect` to find the bug.

Pre-requisites:
* ruby: 3.3.6
* yarn

To setup the project, run `./setup.sh`.

To run the server, run `bin/rails server`.

## Docker
To build the docker image:
```bash
docker build -t railsdemo .
```

To run the docker image:

```bash
docker run -e SECRET_KEY_BASE=anything -p3000:3000 -v $(pwd)/storage:/rails/storage railsdemo
```

This will create a database in `storage/production.sqlite3` without any data in it.

TODO: Populate the database with some data for the docker image.
