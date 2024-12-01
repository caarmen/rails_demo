# README

This project to accompany a presentation about `git bisect`.

It has a bug introduced somewhere in the git history, regarding date formatting.

The branch `git-bisect-notes` has a script to use with `git bisect` to find the bug.

Pre-requisites:
* ruby: 3.3.6
* yarn

To setup the project, run `./setup.sh`.

To run the server, run `bin/rails server`.
