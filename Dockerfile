FROM rustlang/rust:nightly

ENV ROCKET_ADDRESS=0.0.0.0
ENV ROCKET_PORT=8080

# Download and install latest Rust and Cargo version
RUN rustup update
RUN $ curl https://sh.rustup.rs -sSf | sh

WORKDIR rust/src/rust_app

COPY . .

CMD ["cargo", "run"]
