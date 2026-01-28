# 📦 Installation Guide - OWL OSINT Suite

Complete installation instructions for all platforms.

---

## 📋 Table of Contents

- [System Requirements](#system-requirements)
- [Quick Installation](#quick-installation)
- [Platform-Specific Instructions](#platform-specific-instructions)
- [Virtual Environment Setup](#virtual-environment-setup)
- [Dependency Installation](#dependency-installation)
- [Configuration](#configuration)
- [Verification](#verification)
- [Troubleshooting](#troubleshooting)
- [Docker Installation](#docker-installation)
- [Uninstallation](#uninstallation)

---

## 🖥️ System Requirements

### Minimum Requirements

- **CPU**: 2 cores @ 2.0 GHz
- **RAM**: 2 GB
- **Storage**: 500 MB free space
- **OS**: 
  - Linux: Ubuntu 18.04+, Debian 10+, CentOS 7+
  - macOS: 10.15 (Catalina) or higher
  - Windows: Windows 10/11
- **Python**: 3.8, 3.9, 3.10, 3.11, or 3.12
- **Internet**: Required for OSINT operations

### Recommended Requirements

- **CPU**: 4 cores @ 2.5 GHz or higher
- **RAM**: 4 GB or more
- **Storage**: 2 GB free space
- **SSD**: For better performance
- **Network**: Stable broadband connection

---

## ⚡ Quick Installation

### One-Line Install (Linux/macOS)

```bash
curl -sSL https://raw.githubusercontent.com/yourusername/owl-osint/main/install.sh | bash
```

Or download and run manually:

```bash
wget https://raw.githubusercontent.com/yourusername/owl-osint/main/install.sh
chmod +x install.sh
./install.sh
```

### What the Installer Does

1. ✅ Checks Python version compatibility
2. ✅ Installs system dependencies
3. ✅ Creates virtual environment
4. ✅ Installs Python packages
5. ✅ Sets up configuration files
6. ✅ Creates necessary directories
7. ✅ Runs initial tests
8. ✅ Displays success message

---

## 🐧 Platform-Specific Instructions

### Ubuntu / Debian

#### Step 1: Update System

```bash
sudo apt-get update
sudo apt-get upgrade -y
```

#### Step 2: Install Python and Prerequisites

```bash
# Install Python and pip
sudo apt-get install -y python3 python3-pip python3-venv python3-dev

# Install build essentials
sudo apt-get install -y build-essential git

# Install PDF generation dependencies (for reports)
sudo apt-get install -y libpango-1.0-0 libpangoft2-1.0-0
sudo apt-get install -y libharfbuzz-dev libffi-dev libjpeg-dev
sudo apt-get install -y libopenjp2-7-dev libcairo2-dev
```

#### Step 3: Clone Repository

```bash
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint
```

#### Step 4: Install OWL OSINT

```bash
# Run installer
./install.sh

# Or manually:
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

### Fedora / RHEL / CentOS

#### Step 1: Update System

```bash
sudo dnf update -y  # Fedora/RHEL 8+
# or
sudo yum update -y  # CentOS 7
```

#### Step 2: Install Dependencies

```bash
# Install Python
sudo dnf install -y python3 python3-pip python3-devel
# or
sudo yum install -y python3 python3-pip python3-devel

# Install build tools
sudo dnf groupinstall -y "Development Tools"
sudo dnf install -y git

# Install PDF dependencies
sudo dnf install -y pango cairo harfbuzz libffi-devel libjpeg-devel
```

#### Step 3: Install OWL OSINT

```bash
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint
./install.sh
```

---

### macOS

#### Step 1: Install Homebrew (if not installed)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Step 2: Install Python and Dependencies

```bash
# Install Python 3
brew install python@3.11

# Install PDF dependencies
brew install pango cairo harfbuzz

# Install Git (if not installed)
brew install git
```

#### Step 3: Clone and Install

```bash
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint

# Run installer
./install.sh

# Or manual installation
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

### Windows

#### Step 1: Install Python

1. Download Python 3.11 from [python.org](https://www.python.org/downloads/)
2. Run installer
3. ✅ Check "Add Python to PATH"
4. Click "Install Now"

#### Step 2: Install GTK3 Runtime (for PDF generation)

1. Download from: [GTK3 Runtime](https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases)
2. Run installer with default options

#### Step 3: Install Git

1. Download from [git-scm.com](https://git-scm.com/)
2. Install with default settings

#### Step 4: Clone Repository

Open Command Prompt or PowerShell:

```cmd
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint
```

#### Step 5: Create Virtual Environment

```cmd
python -m venv venv
venv\Scripts\activate
```

#### Step 6: Install Dependencies

```cmd
pip install -r requirements.txt
```

#### Alternative: Windows Subsystem for Linux (WSL)

For better compatibility, use WSL:

```bash
# Install WSL (PowerShell as Administrator)
wsl --install

# Then follow Linux instructions
```

---

## 🐍 Virtual Environment Setup

### Why Use Virtual Environment?

- ✅ Isolates dependencies
- ✅ Prevents conflicts with system packages
- ✅ Easy to manage and remove
- ✅ Recommended best practice

### Creating Virtual Environment

#### Linux/macOS:

```bash
# Using venv (built-in)
python3 -m venv venv

# Activate
source venv/bin/activate

# Deactivate (when done)
deactivate
```

#### Windows:

```cmd
# Create
python -m venv venv

# Activate
venv\Scripts\activate

# Deactivate
deactivate
```

### Alternative: Conda

```bash
# Create conda environment
conda create -n owl-osint python=3.11

# Activate
conda activate owl-osint

# Install dependencies
pip install -r requirements.txt

# Deactivate
conda deactivate
```

---

## 📦 Dependency Installation

### Core Dependencies

The `requirements.txt` includes:

```txt
# Core Framework
aiohttp==3.9.1              # Async HTTP client
requests==2.31.0            # HTTP library

# Web Scraping
beautifulsoup4==4.12.2      # HTML parsing

# Image Processing
pillow==10.1.0              # Image library
piexif==1.1.3               # EXIF data handling

# CLI Interface
click==8.1.7                # CLI framework
colorama==0.4.6             # Terminal colors
termcolor==2.4.0            # Text coloring
pyfiglet==1.0.2             # ASCII art
questionary==2.0.1          # Interactive prompts
tabulate==0.9.0             # Table formatting
tqdm==4.66.1                # Progress bars

# Reports
jinja2==3.1.2               # Template engine
weasyprint==60.1            # PDF generation
reportlab==4.0.7            # PDF library

# Data Processing
matplotlib==3.8.2           # Plotting/charts

# Phone Intelligence
phonenumbers==8.13.26       # Phone validation

# Utilities
python-dotenv==1.0.0        # Environment variables
nest-asyncio==1.6.0         # Async patch
```

### Installation Options

#### Option 1: All Dependencies (Recommended)

```bash
pip install -r requirements.txt
```

#### Option 2: Minimal Installation

For minimal features without PDF generation:

```bash
pip install aiohttp requests beautifulsoup4 pillow piexif \
    click colorama termcolor pyfiglet questionary tabulate tqdm \
    python-dotenv nest-asyncio phonenumbers
```

#### Option 3: Development Installation

With development tools:

```bash
pip install -r requirements.txt
pip install -r requirements-dev.txt  # includes pytest, flake8, black, etc.
```

### Installing Specific Versions

```bash
# For Python 3.8 compatibility
pip install -r requirements-py38.txt

# For Python 3.12
pip install -r requirements-py312.txt
```

---

## ⚙️ Configuration

### Environment Variables

Create `.env` file from template:

```bash
cp .env.example .env
```

Edit `.env`:

```bash
# API Keys (optional)
HIBP_API_KEY=your_haveibeenpwned_api_key_here
VIRUSTOTAL_API_KEY=your_virustotal_api_key_here

# Database
DATABASE_PATH=osint_data.db

# Output Directories
OUTPUT_DIR=output
REPORTS_DIR=output/reports
SCREENSHOTS_DIR=output/screenshots

# Proxy Settings (optional)
HTTP_PROXY=
HTTPS_PROXY=
SOCKS_PROXY=

# Rate Limiting
REQUEST_TIMEOUT=30
MAX_RETRIES=3
RATE_LIMIT_DELAY=1

# Advanced Settings
DEBUG_MODE=false
LOG_LEVEL=INFO
```

### Configuration File

Edit `config.py` for advanced settings:

```python
# Data directories
DATA_DIR = Path("data")
OUTPUT_DIR = Path("output")
SCREENSHOTS_DIR = OUTPUT_DIR / "screenshots"
REPORTS_DIR = OUTPUT_DIR / "reports"

# Network settings
USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) ..."
REQUEST_TIMEOUT = 30
MAX_CONCURRENT_REQUESTS = 10

# Database
DATABASE_FILE = "osint_data.db"

# Logging
LOG_LEVEL = "INFO"
LOG_FILE = "owl_osint.log"
```

### Directory Structure

OWL OSINT creates these directories:

```
owl-osint/
├── config.py           # Main configuration
├── .env               # Environment variables
├── main.py            # Entry point
├── core/              # Intelligence system
├── modules/           # OSINT modules
├── utils/             # Utilities
├── data/              # Platform configurations
├── output/            # Generated files
│   ├── reports/       # HTML/PDF reports
│   ├── screenshots/   # Screenshots
│   └── data/          # Exported data
├── logs/              # Log files
└── tests/             # Test files
```

---

## ✅ Verification

### Test Installation

```bash
# Check Python version
python --version

# Test imports
python -c "import aiohttp, requests, bs4; print('✓ Core dependencies OK')"

# Run built-in tests
python main.py --test

# Run specific module test
python -m pytest tests/test_username_hunter.py -v
```

### Expected Output

```
🦉 OWL OSINT Suite v2.0
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Running installation tests...

✓ Python version: 3.11.0
✓ Core dependencies: OK
✓ Database: Initialized
✓ Modules: All loaded (8/8)
✓ Core intelligence: Available
✓ Configuration: Valid

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Installation successful! ✓

Run 'python main.py' to start.
```

### Verify Specific Features

```bash
# Test phone validation
python -c "import phonenumbers; print('✓ Phone OSINT ready')"

# Test PDF generation
python -c "import weasyprint; print('✓ PDF reports ready')"

# Test database
python -c "from utils.database import Database; db = Database(); print('✓ Database ready')"

# Test core intelligence
python -c "from core.entity import Entity; print('✓ Intelligence system ready')"
```

---

## 🔧 Troubleshooting

### Common Issues

#### Issue 1: Python Version Error

```
Error: Python 3.8+ required
```

**Solution:**
```bash
# Check version
python3 --version

# Install correct version
# Ubuntu/Debian:
sudo apt-get install python3.11

# macOS:
brew install python@3.11

# Update alternatives (Linux)
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
```

---

#### Issue 2: pip Install Fails

```
ERROR: Could not build wheels for X
```

**Solution:**
```bash
# Update pip
pip install --upgrade pip setuptools wheel

# Install build dependencies (Linux)
sudo apt-get install -y python3-dev build-essential

# Try again
pip install -r requirements.txt
```

---

#### Issue 3: WeasyPrint Installation Error

```
ERROR: Failed building wheel for weasyprint
```

**Solution Linux:**
```bash
# Install system dependencies first
sudo apt-get install -y python3-dev python3-pip python3-setuptools \
    python3-wheel python3-cffi libcairo2 libpango-1.0-0 libpangocairo-1.0-0 \
    libgdk-pixbuf2.0-0 libffi-dev shared-mime-info

# Then install weasyprint
pip install weasyprint
```

**Solution macOS:**
```bash
brew install pango cairo
pip install weasyprint
```

**Solution Windows:**
- Install GTK3 Runtime from [here](https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases)
- Restart terminal
- Try again

**Alternative:** Skip PDF generation
```bash
pip install -r requirements.txt --no-deps
pip install aiohttp requests beautifulsoup4  # Install core only
```

---

#### Issue 4: Permission Denied

```
PermissionError: [Errno 13] Permission denied
```

**Solution:**
```bash
# Don't use sudo with pip in virtual environment!

# If outside venv, use --user flag
pip install --user -r requirements.txt

# Or create virtual environment (recommended)
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

#### Issue 5: SSL Certificate Error

```
SSLError: certificate verify failed
```

**Solution:**
```bash
# Update certificates (macOS)
/Applications/Python\ 3.11/Install\ Certificates.command

# Linux
sudo apt-get install ca-certificates
sudo update-ca-certificates

# Or temporarily disable (NOT RECOMMENDED for production)
export PYTHONHTTPSVERIFY=0
```

---

#### Issue 6: Module Not Found

```
ModuleNotFoundError: No module named 'X'
```

**Solution:**
```bash
# Ensure virtual environment is activated
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# Reinstall dependencies
pip install -r requirements.txt

# Check installation
pip list | grep X
```

---

#### Issue 7: Database Lock Error

```
sqlite3.OperationalError: database is locked
```

**Solution:**
```bash
# Close other instances of OWL OSINT

# Or delete lock file
rm osint_data.db-journal

# Or use new database
mv osint_data.db osint_data.db.backup
```

---

### Platform-Specific Issues

#### Linux: libpangocairo Error

```bash
sudo apt-get install -y libpangocairo-1.0-0
```

#### macOS: Command Line Tools Missing

```bash
xcode-select --install
```

#### Windows: DLL Load Failed

Install Visual C++ Redistributable:
- Download from [Microsoft](https://aka.ms/vs/17/release/vc_redist.x64.exe)

---

### Getting Help

If issues persist:

1. Check [Troubleshooting Guide](TROUBLESHOOTING.md)
2. Search [GitHub Issues](https://github.com/yourusername/owl-osint/issues)
3. Ask in [Discussions](https://github.com/yourusername/owl-osint/discussions)
4. Join [Discord](#) for real-time help

---

## 🐳 Docker Installation

### Using Docker (Easiest Method)

#### Prerequisites

- Docker installed ([Get Docker](https://docs.docker.com/get-docker/))
- Docker Compose (optional)

#### Quick Start

```bash
# Pull image (when available)
docker pull yourusername/owl-osint:latest

# Run
docker run -it --rm yourusername/owl-osint
```

#### Build from Source

```bash
# Clone repository
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint

# Build image
docker build -t owl-osint .

# Run
docker run -it --rm owl-osint
```

#### With Data Persistence

```bash
# Run with volume mounting
docker run -it --rm \
    -v $(pwd)/output:/app/output \
    -v $(pwd)/data:/app/data \
    owl-osint
```

#### Docker Compose

Create `docker-compose.yml`:

```yaml
version: '3.8'

services:
  owl-osint:
    build: .
    container_name: owl-osint
    volumes:
      - ./output:/app/output
      - ./data:/app/data
      - ./osint_data.db:/app/osint_data.db
    environment:
      - HIBP_API_KEY=${HIBP_API_KEY}
    stdin_open: true
    tty: true
```

Run:
```bash
docker-compose up
```

---

## 🗑️ Uninstallation

### Remove Virtual Environment

```bash
# Deactivate if active
deactivate

# Remove directory
rm -rf venv/
```

### Remove OWL OSINT

```bash
# Remove entire directory
cd ..
rm -rf owl-osint/

# Or keep configuration/data
cd owl-osint
rm -rf venv/ modules/ core/ utils/
# Keep: output/, .env, osint_data.db
```

### Clean System Packages

```bash
# Linux: Remove PDF dependencies (optional)
sudo apt-get remove libpango-1.0-0 libpangocairo-1.0-0

# macOS: Remove with Homebrew
brew uninstall pango cairo

# Windows: Uninstall GTK3 Runtime from Control Panel
```

---

## 📞 Support

Need installation help?

- **Documentation**: [Installation FAQ](FAQ.md#installation)
- **Issues**: [GitHub Issues](https://github.com/yourusername/owl-osint/issues)
- **Discord**: [Join server](#)
- **Email**: support@example.com

---

## ✅ Next Steps

Installation complete? Continue to:

1. [User Guide](USER_GUIDE.md) - Learn how to use OWL OSINT
2. [Quick Start](README.md#quick-start) - Run your first search
3. [Tutorials](docs/tutorials/) - Step-by-step guides
4. [Examples](examples/) - Real-world scenarios

---

<div align="center">

**[⬆ Back to Top](#-installation-guide---owl-osint-suite)**

Made with ❤️ by the OSINT community

</div>
