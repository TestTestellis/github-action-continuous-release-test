.DEFAULT_GOAL := help

.PHONY: help
help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: lint
lint: ## Lint the project
	docker run -e RUN_LOCAL=true -v $(shell pwd):/tmp/lint github/super-linter:slim-v4.9.1

.PHONY: test
test: ## Run the tests
	echo "I am a test"
