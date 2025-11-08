# 🛠️ Development Guide

Complete guide for contributing to Awesome SAM Foundation Models.

## 📋 Table of Contents

- [Quick Start](#-quick-start)
- [Development Environment](#-development-environment)
- [Code Quality](#-code-quality)
- [Testing](#-testing)
- [Documentation](#-documentation)
- [CI/CD](#-cicd)
- [Release Process](#-release-process)

---

## 🚀 Quick Start

### Prerequisites

- Python 3.9+
- [Hatch](https://hatch.pypa.io/) (recommended) or pip
- Git
- Pre-commit (optional but recommended)

### Installation

```bash
# Clone the repository
git clone https://github.com/umitkacar/SAM-Foundation-Models.git
cd SAM-Foundation-Models

# Install Hatch (if not already installed)
pip install hatch

# Install development dependencies
make dev-install

# Or manually
pip install -e ".[dev]"
pre-commit install
```

---

## 🔧 Development Environment

### Using Hatch (Recommended)

Hatch provides isolated environments and convenient commands:

```bash
# Run tests
hatch run test

# Run tests with coverage
hatch run test-cov

# Run linter
hatch run lint

# Format code
hatch run format

# Type check
hatch run type-check

# Run all checks
hatch run check
```

### Using Make

We provide a Makefile for common tasks:

```bash
# Show all available commands
make help

# Install development dependencies
make dev-install

# Run tests with coverage
make test-cov

# Run all checks
make check

# Clean build artifacts
make clean
```

### Manual Setup

```bash
# Create virtual environment
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate

# Install package in editable mode with dev dependencies
pip install -e ".[dev]"

# Install pre-commit hooks
pre-commit install
```

---

## ✨ Code Quality

### Linting with Ruff

Ruff is a fast Python linter that replaces flake8, isort, and more:

```bash
# Check code
hatch run lint
# or
make lint

# Auto-fix issues
hatch run lint-fix
# or
make lint-fix
```

**Configuration:** See `[tool.ruff]` in `pyproject.toml`

### Formatting with Black

Black is the opinionated code formatter:

```bash
# Format code
hatch run format
# or
make format

# Check formatting
hatch run format-check
# or
make format-check
```

**Configuration:** See `[tool.black]` in `pyproject.toml`

### Type Checking with MyPy

MyPy ensures type safety:

```bash
# Run type checker
hatch run type-check
# or
make type-check
```

**Configuration:** See `[tool.mypy]` in `pyproject.toml`

### Pre-commit Hooks

Pre-commit runs checks before each commit:

```bash
# Install hooks
make pre-commit-install

# Run manually on all files
make pre-commit
# or
hatch run pre-commit-run

# Run on staged files only
pre-commit run
```

**Configuration:** See `.pre-commit-config.yaml`

**Hooks include:**
- Ruff (linting + formatting)
- Black (code formatting)
- MyPy (type checking)
- Prettier (markdown, YAML, JSON)
- Bandit (security)
- PyUpgrade (syntax upgrades)
- DocFormatter (docstring formatting)
- Codespell (spelling)
- ShellCheck (shell scripts)
- YAMLlint (YAML files)
- Markdownlint (markdown files)

---

## 🧪 Testing

### Running Tests

```bash
# Run all tests
make test

# Run with coverage
make test-cov

# Run in parallel (fast)
make test-fast

# Run in watch mode
make test-watch
```

### Test Organization

```
tests/
├── __init__.py
├── test_utils.py
├── test_models.py
└── integration/
    └── test_workflow.py
```

### Writing Tests

```python
import pytest
from awesome_sam.utils import get_model_info

def test_get_model_info():
    """Test get_model_info function."""
    info = get_model_info("sam2-hiera-large")
    assert info["name"] == "sam2-hiera-large"
    assert info["version"] == "2.1"

@pytest.mark.slow
def test_slow_operation():
    """Test that takes a long time."""
    # Long-running test
    pass

@pytest.mark.gpu
def test_gpu_operation():
    """Test requiring GPU."""
    # GPU test
    pass
```

### Test Markers

- `@pytest.mark.slow` - Slow tests (skip with `-m "not slow"`)
- `@pytest.mark.integration` - Integration tests
- `@pytest.mark.unit` - Unit tests
- `@pytest.mark.gpu` - Tests requiring GPU

### Coverage

```bash
# Generate coverage report
make test-cov

# View HTML report
open htmlcov/index.html  # macOS
xdg-open htmlcov/index.html  # Linux
start htmlcov/index.html  # Windows
```

**Configuration:** See `[tool.coverage]` in `pyproject.toml`

**Coverage targets:**
- Minimum: 80%
- Goal: 90%+

---

## 📚 Documentation

### Building Docs

```bash
# Build documentation
make docs

# Serve locally
make docs-serve
# Opens http://localhost:8000

# Deploy to GitHub Pages
make docs-deploy
```

### Docstring Style

We use Google-style docstrings:

```python
def function(arg1: str, arg2: int) -> bool:
    """Short description.

    Longer description with more details about the function.

    Args:
        arg1: Description of arg1.
        arg2: Description of arg2.

    Returns:
        Description of return value.

    Raises:
        ValueError: When input is invalid.

    Examples:
        >>> function("hello", 42)
        True
    """
    pass
```

---

## 🔄 CI/CD

### GitHub Actions

Our CI pipeline runs on every push and PR:

**Workflows:**
- **Lint & Format** - Ruff, Black, MyPy
- **Test** - Python 3.9, 3.10, 3.11, 3.12 on Linux, macOS, Windows
- **Pre-commit** - All pre-commit hooks
- **Security** - Bandit, Safety
- **Build** - Package build verification
- **Docs** - Documentation build

**Configuration:** `.github/workflows/ci.yml`

### Running CI Locally

```bash
# Run all checks (same as CI)
make check

# Individual checks
make lint
make format-check
make type-check
make test-cov
```

---

## 📦 Release Process

### Version Bumping

1. Update version in `src/__about__.py`:
   ```python
   __version__ = "1.1.0"
   ```

2. Update version in `pyproject.toml`:
   ```toml
   version = "1.1.0"
   ```

3. Commit version bump:
   ```bash
   git commit -am "Bump version to 1.1.0"
   git tag v1.1.0
   git push && git push --tags
   ```

### Building & Publishing

```bash
# Build package
make build

# Check build
twine check dist/*

# Publish to TestPyPI (test first!)
make publish-test

# Publish to PyPI
make publish
```

### Release Checklist

- [ ] All tests passing
- [ ] Documentation updated
- [ ] CHANGELOG.md updated
- [ ] Version bumped
- [ ] Git tag created
- [ ] Built and tested locally
- [ ] Published to TestPyPI
- [ ] Tested installation from TestPyPI
- [ ] Published to PyPI
- [ ] GitHub release created

---

## 📝 Code Style Guide

### Python

- Line length: 100 characters
- Indentation: 4 spaces
- Quotes: Double quotes
- Type hints: Required for public APIs
- Docstrings: Google style

### Imports

```python
# Standard library
from __future__ import annotations
import os
from pathlib import Path

# Third-party
import numpy as np
import torch

# Local
from awesome_sam.utils import helper
```

### Naming Conventions

- **Classes:** `PascalCase`
- **Functions:** `snake_case`
- **Constants:** `UPPER_SNAKE_CASE`
- **Private:** `_leading_underscore`
- **Type variables:** `T`, `KT`, `VT`

---

## 🐛 Debugging

### Common Issues

**ImportError after installation:**
```bash
pip install -e ".[dev]"
```

**Pre-commit failing:**
```bash
pre-commit clean
pre-commit install
pre-commit run --all-files
```

**Tests not found:**
```bash
pip install -e ".[dev]"
pytest tests/
```

**Type errors:**
```bash
mypy --install-types
hatch run type-check
```

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run all checks (`make check`)
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

**PR Checklist:**
- [ ] Code follows style guidelines
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] All checks passing
- [ ] Commits are atomic and well-described

---

## 📞 Support

- **Issues:** [GitHub Issues](https://github.com/umitkacar/SAM-Foundation-Models/issues)
- **Discussions:** [GitHub Discussions](https://github.com/umitkacar/SAM-Foundation-Models/discussions)
- **Documentation:** [README.md](README.md)

---

## 📜 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

---

**Happy Coding! 🚀**
