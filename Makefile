.DEFAULT_GOAL := help

.PHONY: help
help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk '\
	BEGIN {FS = ":.*?## "}; \
	{printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install project dependencies
	echo "no-op"

.PHONY: lint
lint: ## Lint the project
	docker run \
	-e RUN_LOCAL=true \
	-e IGNORE_GENERATED_FILES=true \
	-e IGNORE_GITIGNORED_FILES=true \
	-e YAML_ERROR_ON_WARNING=true \
	-v $(shell pwd):/tmp/lint \
	github/super-linter:slim-v4.9.1

.PHONY: test
test: ## Run the tests
	echo "no-op"

.PHONY: run
run: ## Run the app
	echo "no-op"

.PHONY: clean
clean: ## Clean generated files
	echo "no-op"
