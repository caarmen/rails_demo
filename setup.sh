#!/usr/bin/env bash

# Install dependencies.
bin/bundle install
yarn

# Database creation.
bin/rails db:migrate

# Database initialization.
bin/rails db:seed

# Build assets.
bin/rake assets:precompile
