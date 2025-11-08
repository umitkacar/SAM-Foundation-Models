# Makefile for Awesome SAM Foundation Models
# Provides convenient shortcuts for common development tasks

.PHONY: help install dev-install test test-cov test-fast lint format type-check check clean pre-commit docs

# Default target
.DEFAULT_GOAL := help

# Colors for output
BLUE := \033[0;34m
GREEN := \033[0;32m
YELLOW := \033[0;33m
RED := \033[0;31m
NC := \033[0m # No Color

##@ General

help: ## Display this help message
	@echo "$(BLUE)Awesome SAM Foundation Models - Development Commands$(NC)"
	@echo ""
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make $(YELLOW)<target>$(NC)\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  $(GREEN)%-20s$(NC) %s\n", $$1, $$2 } /^##@/ { printf "\n$(BLUE)%s$(NC)\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Installation

install: ## Install the package
	@echo "$(BLUE)Installing package...$(NC)"
	pip install -e .

dev-install: ## Install development dependencies
	@echo "$(BLUE)Installing development dependencies...$(NC)"
	pip install -e ".[dev]"
	pre-commit install
	@echo "$(GREEN)✓ Development environment ready!$(NC)"

##@ Testing

test: ## Run tests
	@echo "$(BLUE)Running tests...$(NC)"
	hatch run test

test-cov: ## Run tests with coverage
	@echo "$(BLUE)Running tests with coverage...$(NC)"
	hatch run test-cov
	@echo "$(GREEN)✓ Coverage report generated in htmlcov/$(NC)"

test-fast: ## Run tests in parallel
	@echo "$(BLUE)Running tests in parallel...$(NC)"
	hatch run test-fast

test-watch: ## Run tests in watch mode
	@echo "$(BLUE)Running tests in watch mode...$(NC)"
	hatch run test-watch

##@ Code Quality

lint: ## Run linter (ruff)
	@echo "$(BLUE)Running linter...$(NC)"
	hatch run lint

lint-fix: ## Run linter with auto-fix
	@echo "$(BLUE)Running linter with auto-fix...$(NC)"
	hatch run lint-fix

format: ## Format code (black + ruff)
	@echo "$(BLUE)Formatting code...$(NC)"
	hatch run format
	@echo "$(GREEN)✓ Code formatted!$(NC)"

format-check: ## Check code formatting
	@echo "$(BLUE)Checking code formatting...$(NC)"
	hatch run format-check

type-check: ## Run type checker (mypy)
	@echo "$(BLUE)Running type checker...$(NC)"
	hatch run type-check

check: ## Run all checks (lint + format + type + test)
	@echo "$(BLUE)Running all checks...$(NC)"
	hatch run check
	@echo "$(GREEN)✓ All checks passed!$(NC)"

##@ Pre-commit

pre-commit: ## Run pre-commit hooks
	@echo "$(BLUE)Running pre-commit hooks...$(NC)"
	hatch run pre-commit-run

pre-commit-install: ## Install pre-commit hooks
	@echo "$(BLUE)Installing pre-commit hooks...$(NC)"
	hatch run pre-commit-install
	@echo "$(GREEN)✓ Pre-commit hooks installed!$(NC)"

##@ Documentation

docs: ## Build documentation
	@echo "$(BLUE)Building documentation...$(NC)"
	hatch run docs:build
	@echo "$(GREEN)✓ Documentation built in site/$(NC)"

docs-serve: ## Serve documentation locally
	@echo "$(BLUE)Serving documentation at http://localhost:8000$(NC)"
	hatch run docs:serve

docs-deploy: ## Deploy documentation to GitHub Pages
	@echo "$(BLUE)Deploying documentation...$(NC)"
	hatch run docs:deploy
	@echo "$(GREEN)✓ Documentation deployed!$(NC)"

##@ Cleanup

clean: ## Clean build artifacts
	@echo "$(BLUE)Cleaning build artifacts...$(NC)"
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	rm -rf .eggs/
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
	rm -rf .ruff_cache/
	rm -rf htmlcov/
	rm -rf .coverage
	rm -rf coverage.xml
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete
	find . -type f -name "*.pyo" -delete
	find . -type f -name "*.egg" -delete
	@echo "$(GREEN)✓ Cleaned!$(NC)"

clean-all: clean ## Clean everything including venv
	@echo "$(BLUE)Cleaning everything...$(NC)"
	rm -rf .venv/
	rm -rf .hatch/
	@echo "$(GREEN)✓ Everything cleaned!$(NC)"

##@ Build & Release

build: clean ## Build distribution packages
	@echo "$(BLUE)Building distribution packages...$(NC)"
	python -m build
	@echo "$(GREEN)✓ Distribution built in dist/$(NC)"

publish-test: build ## Publish to TestPyPI
	@echo "$(BLUE)Publishing to TestPyPI...$(NC)"
	twine upload --repository testpypi dist/*

publish: build ## Publish to PyPI
	@echo "$(RED)Publishing to PyPI...$(NC)"
	@echo "$(YELLOW)⚠ This will publish to the REAL PyPI!$(NC)"
	@read -p "Are you sure? [y/N] " -n 1 -r; \
	echo; \
	if [[ $$REPLY =~ ^[Yy]$$ ]]; then \
		twine upload dist/*; \
		echo "$(GREEN)✓ Published to PyPI!$(NC)"; \
	else \
		echo "$(YELLOW)Cancelled.$(NC)"; \
	fi

##@ Utilities

version: ## Show version
	@python -c "import tomllib; print(tomllib.load(open('pyproject.toml', 'rb'))['project']['version'])"

info: ## Show project info
	@echo "$(BLUE)Project Information:$(NC)"
	@echo "Name:    $(GREEN)$$(python -c "import tomllib; print(tomllib.load(open('pyproject.toml', 'rb'))['project']['name'])")$(NC)"
	@echo "Version: $(GREEN)$$(python -c "import tomllib; print(tomllib.load(open('pyproject.toml', 'rb'))['project']['version'])")$(NC)"
	@echo "Python:  $(GREEN)$$(python --version)$(NC)"

update: ## Update dependencies
	@echo "$(BLUE)Updating dependencies...$(NC)"
	pip install --upgrade pip
	pip install --upgrade hatch
	pre-commit autoupdate
	@echo "$(GREEN)✓ Dependencies updated!$(NC)"
