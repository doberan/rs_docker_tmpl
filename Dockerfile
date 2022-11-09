FROM rust:1.57.0-alpine as builder

WORKDIR /app

COPY . .

RUN --mount=type=cache,target=/usr/local/cargo/registry; \
    --mount=type=cache,target=/app/target; \
    cargo build --release; \
    ls /app/target

FROM alpine:3.4

WORKDIR /app

COPY --from=builder /app/target/release/app /app

CMD ["/app/app"]