# ⚠️ GitHub Actions Workflow - Manual Setup Required

## Why Manual Setup?

The CI/CD workflow file (`.github/workflows/ci.yml`) exists locally but needs to be added manually due to GitHub App permissions restrictions. The workflow file requires `workflows` permission to be pushed automatically.

## 📋 How to Add the Workflow

### Option 1: GitHub Web Interface (Recommended)

1. **Navigate to your repository:**
   - Go to: https://github.com/umitkacar/SAM-Foundation-Models

2. **Create the workflow file:**
   - Click on `.github/workflows/` (create directory if needed)
   - Click "Add file" → "Create new file"
   - Name: `ci.yml`

3. **Copy the workflow content:**
   - The complete workflow is available in your local repository
   - Path: `.github/workflows/ci.yml`
   - Copy the entire content from the local file

4. **Commit:**
   - Commit message: `Add CI/CD workflow for automated testing`
   - Commit directly to your branch: `claude/update-repo-2025-trends-011CUsvMmKNiHQ3ubpGeqXAY`

### Option 2: Using GitHub Desktop

1. Open the repository in GitHub Desktop
2. The workflow file will appear as a new file
3. Commit with message: `Add CI/CD workflow`
4. Push to origin

### Option 3: Using Git CLI (Outside This Environment)

```bash
git add .github/workflows/ci.yml
git commit -m "Add CI/CD workflow for automated testing"
git push origin claude/update-repo-2025-trends-011CUsvMmKNiHQ3ubpGeqXAY
```

## 🎯 What the Workflow Does

Once added, the CI/CD pipeline will automatically run on every push and PR:

### **Test Matrix:**
- **Operating Systems:** Ubuntu, Windows, macOS
- **Python Versions:** 3.9, 3.10, 3.11, 3.12
- **Total Combinations:** 12 test jobs

### **Quality Checks:**
1. ✅ **Lint & Format** - Ruff, Black, MyPy
2. ✅ **Tests** - Pytest with coverage on all platforms
3. ✅ **Pre-commit** - All 12+ hooks
4. ✅ **Security** - Bandit, Safety scans
5. ✅ **Build** - Package verification
6. ✅ **Documentation** - Docs build check

### **Features:**
- 📊 Codecov integration for coverage reports
- 🚀 Parallel execution for faster results
- 💾 Build artifacts upload
- ⏱️ Timeout protection (10-30 minutes per job)
- 🔁 Concurrency control to cancel outdated runs

## 📄 Workflow File Location

**Local Path:**
```
.github/workflows/ci.yml
```

**File Size:** ~5KB
**Lines:** ~227

## 🔍 Workflow Preview

```yaml
name: CI

on:
  push:
    branches: [main, master, develop]
  pull_request:
    branches: [main, master, develop]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
      - run: hatch run lint
      # ... more steps

  test:
    runs-on: ${{ matrix.os }}
    strategy:
      matrix:
        os: [ubuntu-latest, windows-latest, macos-latest]
        python-version: ["3.9", "3.10", "3.11", "3.12"]
    # ... test steps
```

## ✅ After Adding the Workflow

1. **Check Actions Tab:**
   - Visit: https://github.com/umitkacar/SAM-Foundation-Models/actions
   - You should see workflow runs starting

2. **Badge for README:**
   ```markdown
   [![CI](https://github.com/umitkacar/SAM-Foundation-Models/workflows/CI/badge.svg)](https://github.com/umitkacar/SAM-Foundation-Models/actions)
   ```

3. **Codecov Setup (Optional):**
   - Sign up at: https://codecov.io
   - Add repository
   - Get coverage reports in PRs

## 🆘 Troubleshooting

### Workflow not running?
- Check that the file is in `.github/workflows/ci.yml`
- Verify YAML syntax is correct
- Check Actions tab for error messages

### Tests failing?
- Run locally first: `make check`
- Check Python version compatibility
- Review CI logs for specific errors

### Permission errors?
- Ensure repository has Actions enabled
- Check that workflows have required permissions

## 📚 Learn More

- **GitHub Actions:** https://docs.github.com/en/actions
- **Workflow Syntax:** https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions
- **Hatch CI:** https://hatch.pypa.io/latest/how-to/ci-cd/github-actions/

---

**Note:** This is a one-time manual step. Once added, all future updates to the workflow can be done normally through git commits.
