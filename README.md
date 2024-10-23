# A Noir oracle server, written in Rust

See [these docs](https://github.com/noir-lang/noir/blob/jc/update-oracle-how-to/docs/docs/how_to/how-to-oracles.md) for an explanation of oracles. Those docs implement an oracle server in typescript. This repo implements an oracle server in rust. Rust has been chosen here due to its similarity to Noir syntax, so unconstrained functions and oracle functions should look very similar.

1. Write Noir code which makes oracle calls. See example [here](./noir_packages/src/main.nr).
2. In [main.rs](./src/main.rs), route each oracle call to a handler.
3. Write [handlers](./src/handlers.rs) to format the inputs, call rust functions, and format the outputs.
4. Write rust functions to compute whatever you wanted your oracle call to compute.

## Test

In one terminal:

`cargo build && RUST_LOG=info cargo run`

Wait for the server to start at `http://127.0.0.1:3000`

In another terminal:

`cd noir_packages`

`nargo test --show-output --oracle-resolver http://127.0.0.1:3000`
