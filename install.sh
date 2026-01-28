#!/bin/bash
# ============================================================================
# 🦉 OWL OSINT Suite - Enhanced Edition
# Complete Installation Script
# ============================================================================
# This script will:
# 1. Extract owl3.zip
# 2. Install system dependencies
# 3. Install Python packages
# 4. Create necessary directories
# 5. Test the installation
# ============================================================================

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Banner
echo -e "${PURPLE}============================================================${NC}"
echo -e "${CYAN}         🦉 OWL OSINT Suite - Enhanced Edition${NC}"
echo -e "${PURPLE}              Complete Installation Script${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo ""

# Function to print colored messages
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

print_error() {
    echo -e "${RED}[✗]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

# ============================================================================
# STEP 1: Extract owl3.zip
# ============================================================================
echo ""
print_status "Step 1/7: Extracting owl3.zip..."
echo ""

# Check if owl3.zip exists
if [ ! -f "owl3.zip" ]; then
    print_error "owl3.zip not found in current directory!"
    print_warning "Please ensure owl3.zip is in the same directory as this script."
    exit 1
fi

# Check if unzip is installed
if ! command -v unzip &> /dev/null; then
    print_error "unzip command not found. Installing..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get update
        sudo apt-get install -y unzip
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install unzip
    else
        print_error "Please install unzip manually and run this script again."
        exit 1
    fi
fi

# Extract the archive
print_status "Extracting owl3.zip..."
unzip -q owl3.zip

# Check if extraction was successful
if [ $? -eq 0 ]; then
    print_success "owl3.zip extracted successfully!"
else
    print_error "Failed to extract owl3.zip"
    exit 1
fi

# List extracted files
print_status "Extracted files:"
ls -lh | grep -v "^d" | tail -n +2

echo ""

# ============================================================================
# STEP 2: Check Python Installation
# ============================================================================
echo ""
print_status "Step 2/7: Checking Python installation..."
echo ""

# Check if Python 3 is installed
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1)
    print_success "Python is installed: $PYTHON_VERSION"
    
    # Check Python version (need 3.8+)
    PYTHON_MAJOR=$(python3 -c 'import sys; print(sys.version_info[0])')
    PYTHON_MINOR=$(python3 -c 'import sys; print(sys.version_info[1])')
    
    if [ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -ge 8 ]; then
        print_success "Python version is compatible (3.8+)"
    else
        print_warning "Python version should be 3.8 or higher for best compatibility"
    fi
else
    print_error "Python 3 is not installed!"
    print_warning "Please install Python 3.8 or higher and run this script again."
    exit 1
fi

# Check pip installation
if command -v pip3 &> /dev/null; then
    PIP_VERSION=$(pip3 --version 2>&1)
    print_success "pip is installed: $PIP_VERSION"
else
    print_error "pip3 is not installed!"
    print_warning "Installing pip3..."
    
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get update
        sudo apt-get install -y python3-pip
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install python3
    else
        print_error "Please install pip3 manually and run this script again."
        exit 1
    fi
fi

echo ""

# ============================================================================
# STEP 3: Install System Dependencies
# ============================================================================
echo ""
print_status "Step 3/7: Installing system dependencies..."
echo ""

print_warning "This step may require sudo password for system package installation"
echo ""

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    print_status "Detected Linux system (Debian/Ubuntu based)"
    
    # Update package list
    print_status "Updating package list..."
    sudo apt-get update -qq
    
    # Install basic dependencies
    print_status "Installing Python development tools..."
    sudo apt-get install -y python3-dev python3-pip build-essential
    
    # Install PDF generation dependencies (WeasyPrint)
    print_status "Installing PDF generation dependencies..."
    sudo apt-get install -y \
        libpango-1.0-0 \
        libpangoft2-1.0-0 \
        libharfbuzz-dev \
        libffi-dev \
        libjpeg-dev \
        libopenjp2-7-dev \
        libpangocairo-1.0-0 \
        libgdk-pixbuf2.0-0 \
        libcairo2 \
        libcairo2-dev \
        pkg-config
    
    # Install image processing dependencies
    print_status "Installing image processing dependencies..."
    sudo apt-get install -y \
        libjpeg-dev \
        zlib1g-dev \
        libpng-dev
    
    print_success "System dependencies installed successfully!"
    
elif [[ "$OSTYPE" == "darwin"* ]]; then
    print_status "Detected macOS system"
    
    # Check if Homebrew is installed
    if ! command -v brew &> /dev/null; then
        print_error "Homebrew is not installed!"
        print_warning "Please install Homebrew from https://brew.sh and run this script again."
        exit 1
    fi
    
    print_status "Installing dependencies via Homebrew..."
    brew install python3 pango cairo libffi libjpeg
    
    print_success "System dependencies installed successfully!"
    
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    print_warning "Detected Windows system"
    print_warning "For Windows, please manually install GTK3 Runtime from:"
    print_warning "https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases"
    print_warning ""
    print_status "Continue with Python package installation..."
    
else
    print_warning "Unknown operating system detected"
    print_warning "You may need to manually install dependencies for PDF generation"
    print_warning "See README_ENHANCED.md for details"
fi

echo ""

# ============================================================================
# STEP 4: Upgrade pip and setuptools
# ============================================================================
echo ""
print_status "Step 4/7: Upgrading pip and setuptools..."
echo ""

pip3 install --upgrade pip setuptools wheel --break-system-packages 2>/dev/null || pip3 install --upgrade pip setuptools wheel --user

print_success "pip and setuptools upgraded!"
echo ""

# ============================================================================
# STEP 5: Install Python Packages
# ============================================================================
echo ""
print_status "Step 5/7: Installing Python packages from requirements.txt..."
echo ""

if [ ! -f "requirements.txt" ]; then
    print_error "requirements.txt not found!"
    exit 1
fi

print_status "Installing packages (this may take a few minutes)..."
echo ""

# Try to install all packages at once
pip3 install -r requirements.txt --break-system-packages 2>/dev/null || pip3 install -r requirements.txt --user

if [ $? -eq 0 ]; then
    print_success "All Python packages installed successfully!"
else
    print_warning "Some packages may have failed. Installing core packages individually..."
    echo ""
    
    # Core networking and web scraping
    print_status "Installing core networking packages..."
    pip3 install aiohttp==3.9.1 requests==2.31.0 beautifulsoup4==4.12.2 --break-system-packages 2>/dev/null || pip3 install aiohttp requests beautifulsoup4 --user
    
    # Image processing
    print_status "Installing image processing packages..."
    pip3 install pillow==10.1.0 piexif==1.1.3 --break-system-packages 2>/dev/null || pip3 install pillow piexif --user
    
    # CLI and UI
    print_status "Installing CLI interface packages..."
    pip3 install click==8.1.7 colorama==0.4.6 tabulate==0.9.0 tqdm==4.66.1 pyfiglet==1.0.2 termcolor==2.4.0 questionary==2.0.1 --break-system-packages 2>/dev/null || pip3 install click colorama tabulate tqdm pyfiglet termcolor questionary --user
    
    # Utilities
    print_status "Installing utility packages..."
    pip3 install python-dotenv==1.0.0 jinja2==3.1.2 matplotlib==3.8.2 nest-asyncio==1.6.0 --break-system-packages 2>/dev/null || pip3 install python-dotenv jinja2 matplotlib nest-asyncio --user
    
    # Enhanced features
    print_status "Installing enhanced feature packages..."
    pip3 install phonenumbers==8.13.26 --break-system-packages 2>/dev/null || pip3 install phonenumbers --user
    
    # PDF generation (may fail on some systems)
    print_status "Installing PDF generation packages (optional)..."
    pip3 install weasyprint==60.1 reportlab==4.0.7 --break-system-packages 2>/dev/null || pip3 install weasyprint reportlab --user 2>/dev/null || print_warning "PDF generation packages failed to install - HTML reports will still work"
    
    print_success "Core packages installed successfully!"
fi

echo ""

# ============================================================================
# STEP 6: Create Necessary Directories
# ============================================================================
echo ""
print_status "Step 6/7: Creating necessary directories..."
echo ""

# Create output directories
mkdir -p output/reports
mkdir -p output/screenshots
mkdir -p output/logs
mkdir -p data

print_success "Directory structure created:"
print_status "  ├── output/"
print_status "  │   ├── reports/"
print_status "  │   ├── screenshots/"
print_status "  │   └── logs/"
print_status "  └── data/"

echo ""

# ============================================================================
# STEP 7: Test Installation
# ============================================================================
echo ""
print_status "Step 7/7: Testing installation..."
echo ""

# Check if test file exists
if [ -f "test_enhanced_features.py" ]; then
    print_status "Running test script..."
    echo ""
    python3 test_enhanced_features.py
    echo ""
else
    print_warning "Test script not found, skipping tests..."
fi

# Verify main.py exists
if [ -f "main.py" ]; then
    print_success "main.py found!"
else
    print_error "main.py not found! Installation may be incomplete."
    exit 1
fi

# ============================================================================
# Installation Complete
# ============================================================================
echo ""
echo -e "${PURPLE}============================================================${NC}"
echo -e "${GREEN}              Installation Complete! ✓${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo ""
echo -e "${CYAN}📋 Installation Summary:${NC}"
echo -e "   ${GREEN}✓${NC} System dependencies installed"
echo -e "   ${GREEN}✓${NC} Python packages installed"
echo -e "   ${GREEN}✓${NC} Directory structure created"
echo -e "   ${GREEN}✓${NC} Application is ready to use"
echo ""
echo -e "${CYAN}🚀 Quick Start:${NC}"
echo -e "   Run the tool:       ${YELLOW}python3 main.py${NC}"
echo -e "   View documentation: ${YELLOW}cat README_ENHANCED.md${NC}"
echo -e "   Check changelog:    ${YELLOW}cat CHANGELOG.md${NC}"
echo ""
echo -e "${CYAN}📚 Available Modules:${NC}"
echo -e "   • Username Hunter     - Search usernames across platforms"
echo -e "   • Email OSINT         - Email validation and breach checking"
echo -e "   • Phone OSINT         - Phone number validation and lookup"
echo -e "   • IP Geolocation      - IP address geolocation and analysis"
echo -e "   • Image Metadata      - Extract EXIF data from images"
echo -e "   • Blockchain Tracker  - Track cryptocurrency addresses"
echo -e "   • Social Media Stalker - Profile stalking (TikTok, Instagram)"
echo -e "   • Change Monitor      - Monitor website changes"
echo ""
echo -e "${CYAN}⚙️  Configuration:${NC}"
echo -e "   Create a ${YELLOW}.env${NC} file for API keys (optional)"
echo -e "   Example:"
echo -e "   ${YELLOW}HIBP_API_KEY=your_api_key_here${NC}"
echo -e "   ${YELLOW}HUNTER_IO_KEY=your_api_key_here${NC}"
echo ""
echo -e "${CYAN}🐛 Troubleshooting:${NC}"
echo -e "   If you encounter issues:"
echo -e "   1. Check ${YELLOW}output/logs/${NC} for error logs"
echo -e "   2. Ensure Python 3.8+ is installed"
echo -e "   3. Verify all dependencies in requirements.txt"
echo -e "   4. Read ${YELLOW}FIXES_SUMMARY.md${NC} for known issues"
echo ""
echo -e "${CYAN}📖 Documentation:${NC}"
echo -e "   • ${YELLOW}README_ENHANCED.md${NC} - Full feature documentation"
echo -e "   • ${YELLOW}QUICKSTART.md${NC}      - Quick start guide"
echo -e "   • ${YELLOW}UPGRADE_GUIDE.md${NC}   - Upgrade instructions"
echo -e "   • ${YELLOW}CHANGELOG.md${NC}       - Version history"
echo ""
echo -e "${PURPLE}============================================================${NC}"
echo -e "${GREEN}Happy OSINT hunting! 🦉${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo ""
