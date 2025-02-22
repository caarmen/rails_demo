#!/usr/bin/env ruby

require 'net/http'

# Start the Rails server as a background process and get its PID
pid = Process.spawn("bin/rails server")

# Wait for the server to boot up
sleep 1

# Fetch the page content
response = Net::HTTP.get(URI("http://localhost:3000"))

# Check if the response includes the valid date
result = response.include?("2023-09-13 11:23:34")? 0 : 1

# Stop the server using the PID
Process.kill("TERM", pid)

# Exit with the result of the check
exit result

