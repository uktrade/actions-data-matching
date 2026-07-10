#!/usr/bin/env just --justfile

set dotenv-load

# Default command: lists available recipes
default:
    just --list

# Reformat and lint
format:
    actionlint

# Run tests
test:
    gh act -j ci-success
