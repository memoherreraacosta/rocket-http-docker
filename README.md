# Rocket framework using Docker :rocket:


- [Meet Rocket](https://rocket.rs/)

Rocket is a web framework for Rust (nightly) with a focus on ease-of-use,
expressibility, and speed. Here's an example of a complete Rocket application:

- [main.rs](src/main.rs)
```rust
#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Memo http Rust server!"
}

fn main() {
    rocket::ignite().mount("/", routes![index]).launch();
}
```

* To download it, visit [here](https://rocket.rs/v0.4/guide/getting-started/#installing-rust)

* To run it, run ```cargo run``` in the current directory
