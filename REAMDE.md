In one terminal:

`cargo build && RUST_LOG=info cargo run`

Wait for the server to start.

In another terminal:

`cd noir_packages`

`nargo test --oracle-resolver http://127.0.0.1:3000`
