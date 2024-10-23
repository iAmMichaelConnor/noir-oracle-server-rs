#!/bin/bash

# Start the server in the background (using Python's built-in HTTP server)
# Replace this command with your actual server command
echo "Starting server..."
# python3 -m http.server 3000 &
cargo build && RUST_LOG=info cargo run &


# Wait for 10 seconds to give the server time to start
echo "Waiting 10 seconds for the server to start..."
sleep 10

curl -I http://localhost:3000
