#!/usr/bin/env bash

# Start the server
bin/rails server --daemon

# Wait for the server to be completely up.
sleep 1

# Fetch our page and look for expected text.
curl --silent localhost:3000 | grep "2024-12-14 12:30:00"

# grep exits with:
# - 0 if the text was found
# - 1 otherwise
result=$?

# Stop our server.
kill -9 $(cat tmp/pids/server.pid)

# Exit with the exit code of grep.
exit $result
