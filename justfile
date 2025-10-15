# https://just.systems/
set dotenv-load := false

@_default:
    just --list

setup:
    cp -i .env.example .env
    just build

build:
    docker compose build

shell:
    docker compose run --rm agent bash
