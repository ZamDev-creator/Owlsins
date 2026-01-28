# 🤝 Contributing to OWL OSINT Suite

Thank you for your interest in contributing! This document provides guidelines for contributing to OWL OSINT.

---

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Setup](#development-setup)
- [Coding Standards](#coding-standards)
- [Pull Request Process](#pull-request-process)
- [Community](#community)

---

## 📜 Code of Conduct

### Our Pledge

We are committed to providing a welcoming and inclusive environment for all contributors.

### Expected Behavior

- ✅ Be respectful and constructive
- ✅ Accept feedback gracefully
- ✅ Focus on what is best for the community
- ✅ Show empathy towards others

### Unacceptable Behavior

- ❌ Harassment or discrimination
- ❌ Trolling or insulting comments
- ❌ Personal or political attacks
- ❌ Publishing others' private information

---

## 🎯 How Can I Contribute?

### 🐛 Reporting Bugs

**Before Submitting:**
- Check existing [issues](https://github.com/yourusername/owl-osint/issues)
- Try the latest version
- Review [FAQ](FAQ.md) and [Troubleshooting](TROUBLESHOOTING.md)

**Bug Report Template:**
```markdown
## Bug Description
Clear description of the bug

## Steps to Reproduce
1. Step 1
2. Step 2
3. ...

## Expected Behavior
What should happen

## Actual Behavior
What actually happens

## Environment
- OWL Version: 
- Python Version:
- OS:
- Installation Method:

## Error Messages
```
Paste error messages here
```

## Additional Context
Screenshots, logs, etc.
```

**Submit:** [Create Bug Report](https://github.com/yourusername/owl-osint/issues/new?template=bug_report.md)

---

### 💡 Suggesting Features

**Before Suggesting:**
- Check [existing discussions](https://github.com/yourusername/owl-osint/discussions)
- Review [roadmap](README.md#roadmap)
- Consider if it fits OWL's mission

**Feature Request Template:**
```markdown
## Feature Description
Clear description of the feature

## Use Case
Why is this feature useful?

## Proposed Solution
How could this work?

## Alternatives Considered
Other ways to achieve this

## Additional Context
Examples, screenshots, etc.
```

**Submit:** [Request Feature](https://github.com/yourusername/owl-osint/discussions/new?category=ideas)

---

### 📝 Improving Documentation

**Areas to Contribute:**
- Fix typos and grammar
- Improve clarity
- Add examples
- Translate documentation
- Create tutorials
- Add screenshots/diagrams

**How to Contribute:**
1. Fork repository
2. Edit files in `docs/` or root
3. Submit pull request

**Good Documentation:**
- Clear and concise
- Includes examples
- Uses proper markdown
- No jargon (or explains it)

---

### 🔧 Contributing Code

#### What to Work On

**Good First Issues:**
- Look for `good-first-issue` label
- Documentation improvements
- Test coverage
- Minor bug fixes

**Priority Areas:**
- Security improvements
- Testing coverage
- Performance optimization
- New platform support
- Bug fixes

**Avoid:**
- Major architecture changes (discuss first!)
- Breaking changes without consensus
- Unsolicited feature rewrites

---

## 💻 Development Setup

### Prerequisites

- Python 3.8+
- Git
- Virtual environment tool
- (Optional) Docker

### Setup Steps

```bash
# 1. Fork on GitHub
# Click "Fork" button

# 2. Clone your fork
git clone https://github.com/YOUR-USERNAME/owl-osint.git
cd owl-osint

# 3. Add upstream remote
git remote add upstream https://github.com/yourusername/owl-osint.git

# 4. Create virtual environment
python3 -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# 5. Install development dependencies
pip install -r requirements.txt
pip install -r requirements-dev.txt

# 6. Verify installation
python -m pytest tests/
```

### Development Dependencies

```txt
# requirements-dev.txt
pytest==7.4.3           # Testing framework
pytest-asyncio==0.21.1  # Async testing
pytest-cov==4.1.0       # Coverage reporting
black==23.11.0          # Code formatter
flake8==6.1.0           # Linter
mypy==1.7.1             # Type checking
isort==5.12.0           # Import sorting
```

---

## 📏 Coding Standards

### Python Style Guide

We follow [PEP 8](https://pep8.org/) with some modifications.

**Key Points:**
- Line length: 88 characters (Black default)
- Indentation: 4 spaces
- Quotes: Double quotes for strings
- Type hints: Use for function signatures

### Code Formatting

**Use Black:**
```bash
# Format all files
black .

# Check without modifying
black --check .
```

**Use isort:**
```bash
# Sort imports
isort .

# Check
isort --check .
```

### Linting

**Use flake8:**
```bash
# Lint all files
flake8 .

# With specific rules
flake8 --max-line-length=88 --extend-ignore=E203 .
```

### Type Checking

**Use mypy:**
```bash
# Type check
mypy modules/ core/ utils/

# Strict mode
mypy --strict modules/
```

### Example Code

**Good:**
```python
from typing import Dict, List, Optional


def search_username(
    username: str,
    platforms: Optional[List[str]] = None
) -> Dict[str, Any]:
    """
    Search for username across platforms.
    
    Args:
        username: Username to search
        platforms: Specific platforms (None = all)
    
    Returns:
        Dictionary with search results
        
    Raises:
        ValueError: If username is invalid
    """
    if not username or len(username) < 3:
        raise ValueError("Username must be at least 3 characters")
    
    results = {}
    platforms = platforms or self.get_all_platforms()
    
    for platform in platforms:
        result = self._check_platform(username, platform)
        if result:
            results[platform] = result
    
    return results
```

**Bad:**
```python
# No type hints, no docstring, unclear variable names
def search(u, p=None):
    if not u or len(u)<3:
        return None
    r={}
    for x in p or self.get():
        y=self.check(u,x)
        if y:
            r[x]=y
    return r
```

---

## 🧪 Testing

### Writing Tests

**Test Structure:**
```python
import pytest
from modules.username_hunter import UsernameHunter


class TestUsernameHunter:
    """Test username hunting functionality."""
    
    @pytest.fixture
    def hunter(self):
        """Create hunter instance."""
        return UsernameHunter()
    
    def test_valid_username(self, hunter):
        """Test search with valid username."""
        results = hunter.search_username("test_user")
        assert results is not None
        assert isinstance(results, dict)
    
    def test_invalid_username(self, hunter):
        """Test search with invalid username."""
        with pytest.raises(ValueError):
            hunter.search_username("ab")  # Too short
    
    @pytest.mark.asyncio
    async def test_async_search(self, hunter):
        """Test async search functionality."""
        results = await hunter.search_username_async("test_user")
        assert results is not None
```

### Running Tests

```bash
# Run all tests
pytest

# Run specific file
pytest tests/test_username_hunter.py

# Run with coverage
pytest --cov=modules --cov=core --cov=utils

# Run specific test
pytest tests/test_username_hunter.py::TestUsernameHunter::test_valid_username

# Verbose output
pytest -v

# Stop on first failure
pytest -x
```

### Test Coverage

**Check Coverage:**
```bash
# Generate coverage report
pytest --cov=. --cov-report=html

# Open report
open htmlcov/index.html
```

**Target:** 80%+ coverage

### Test Guidelines

**DO:**
- ✅ Test public methods
- ✅ Test edge cases
- ✅ Test error conditions
- ✅ Use descriptive test names
- ✅ Keep tests independent

**DON'T:**
- ❌ Test private methods directly
- ❌ Write flaky tests
- ❌ Make tests depend on each other
- ❌ Test external APIs directly (use mocks)

---

## 🔄 Pull Request Process

### Before Submitting

**Checklist:**
- [ ] Code follows style guide
- [ ] Tests pass locally
- [ ] New code has tests
- [ ] Documentation updated
- [ ] No merge conflicts
- [ ] Commit messages clear

### Creating Pull Request

**1. Create Branch:**
```bash
# Update main
git checkout main
git pull upstream main

# Create feature branch
git checkout -b feature/your-feature-name
# or
git checkout -b fix/bug-description
```

**2. Make Changes:**
```bash
# Edit files
# ...

# Stage changes
git add .

# Commit with clear message
git commit -m "Add feature: description"
```

**3. Push Branch:**
```bash
git push origin feature/your-feature-name
```

**4. Open PR:**
- Go to GitHub
- Click "New Pull Request"
- Select your branch
- Fill out template
- Submit

### PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
How was this tested?

## Checklist
- [ ] Tests pass
- [ ] Code formatted (black)
- [ ] Linted (flake8)
- [ ] Documentation updated
- [ ] CHANGELOG.md updated (if needed)

## Related Issues
Fixes #123
```

### Review Process

**What Happens:**
1. Automated checks run (linting, tests)
2. Maintainers review code
3. Feedback provided
4. You make changes (if needed)
5. PR approved and merged

**Review Criteria:**
- Code quality
- Test coverage
- Documentation
- Performance impact
- Security implications

### After Merge

```bash
# Update local main
git checkout main
git pull upstream main

# Delete feature branch
git branch -d feature/your-feature-name
git push origin --delete feature/your-feature-name
```

---

## 🎨 Commit Message Guidelines

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Formatting
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance

### Examples

**Good:**
```
feat(username): Add deep verification for Instagram

Implement manual verification that checks:
- Profile existence
- Username match
- Bio extraction
- Follower count validation

Closes #123
```

**Bad:**
```
updated stuff
```

### Rules

- Use present tense ("Add feature" not "Added feature")
- Capitalize first letter
- No period at end of subject
- Body explains what and why (not how)
- Reference issues at bottom

---

## 🌍 Community

### Communication Channels

**GitHub:**
- [Issues](https://github.com/yourusername/owl-osint/issues) - Bugs, features
- [Discussions](https://github.com/yourusername/owl-osint/discussions) - Q&A, ideas

**Social:**
- Discord: [Join server](#)
- Telegram: [@owl_osint](#)
- Twitter: [@owl_osint](#)
- Reddit: [r/owl_osint](#)

### Getting Help

**Questions:**
1. Check documentation
2. Search existing issues/discussions
3. Ask in Discord/Telegram
4. Open GitHub discussion

**Don't:**
- ❌ Open issues for questions (use discussions)
- ❌ Email maintainers directly
- ❌ DM on social media

### Recognition

**Contributors Get:**
- 🏆 Listed in CONTRIBUTORS.md
- 🎖️ GitHub badge
- 🙏 Our gratitude!

**Top Contributors:**
- Feature in README
- Maintainer consideration
- Swag (if available)

---

## 📋 Additional Resources

### Useful Links

- **Python:** [PEP 8 Style Guide](https://pep8.org/)
- **Git:** [Pro Git Book](https://git-scm.com/book/)
- **Testing:** [pytest Documentation](https://docs.pytest.org/)
- **Async:** [asyncio Guide](https://docs.python.org/3/library/asyncio.html)

### Templates

- [Bug Report](.github/ISSUE_TEMPLATE/bug_report.md)
- [Feature Request](.github/ISSUE_TEMPLATE/feature_request.md)
- [Pull Request](.github/PULL_REQUEST_TEMPLATE.md)

---

## ❓ Questions?

**Have questions about contributing?**

- Open a [Discussion](https://github.com/yourusername/owl-osint/discussions)
- Join our [Discord](#)
- Email: contribute@example.com

---

<div align="center">

**Thank you for contributing to OWL OSINT! 🦉**

Every contribution, no matter how small, makes a difference.

[⬆ Back to Top](#-contributing-to-owl-osint-suite)

</div>
