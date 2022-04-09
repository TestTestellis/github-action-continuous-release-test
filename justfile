#!/usr/bin/env just --justfile

# renovate: datasource=docker depName=github/super-linter
super_linter_version := "slim-v4.9.2@sha256:63904379c7293d35915599bb9a27cb166431a4ef2891a960dec89adf26a3af67" # editorconfig-checker-disable-line

@_default:
  just --list

# Install project dependencies
install:
  echo "no-op"

# Lint the project
lint:
  docker run \
  -e RUN_LOCAL=true \
  -e DEFAULT_BRANCH=main \
  -e IGNORE_GENERATED_FILES=true \
  -e IGNORE_GITIGNORED_FILES=true \
  -e YAML_ERROR_ON_WARNING=true \
  -v {{justfile_directory()}}:/tmp/lint \
  github/super-linter:{{super_linter_version}}

# Run the tests
test:
  echo "no-op"

# Run the app
run:
  echo "no-op"

# Clean generated files
clean:
  echo "no-op"
