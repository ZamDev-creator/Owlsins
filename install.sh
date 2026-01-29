#!/bin/bash
# ============================================================================
# 🦉 OWL OSINT Suite - Enhanced Edition
# Complete Installation Script (Termux & OpenCV Optimized)
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

# Check if environment is Termux
IS_TERMUX=false
if [[ -d "/data/data/com.termux/files/usr" ]]; then
    IS_TERMUX=true
fi

# ============================================================================
# STEP 1: Extract owl3.zip
# ============================================================================
echo ""
print_status "Step 1/7: Extracting owl3.zip..."
echo ""

if [ ! -f "owl3.zip" ]; then
    print_error "owl3.zip not found!"
    exit 1
fi

if ! command -v unzip &> /dev/null; then
    print_error "unzip not found. Installing..."
    if [ "$IS_TERMUX" = true ]; then
        pkg install -y unzip
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get update && sudo apt-get install -y unzip
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install unzip
    fi
fi

unzip -q -o owl3.zip
print_success "owl3.zip extracted successfully!"

# ============================================================================
# STEP 2: Check Python Installation
# ============================================================================
echo ""
print_status "Step 2/7: Checking Python..."
# (Logic tetap sama, pastikan python3 tersedia)
if ! command -v python3 &> /dev/null; then
    if [ "$IS_TERMUX" = true ]; then pkg install -y python; else print_error "Install Python3!"; exit 1; fi
fi
print_success "Python $(python3 --version) is ready."

# ============================================================================
# STEP 3: Install System Dependencies (Termux & OpenCV Support)
# ============================================================================
echo ""
print_status "Step 3/7: Installing system dependencies..."
echo ""

if [ "$IS_TERMUX" = true ]; then
    print_status "Detected Termux environment. Using pkg manager..."
    
    # Update repo
    pkg update -y
    
    # Install build tools & OpenCV (Critical for Termux)
    print_status "Installing OpenCV and Build Tools..."
    pkg install -y python ndk-binutils binutils rust make clang-17 git opencv-python libjpeg-turbo libpng
    
    # Install PDF & Graphic libs for Termux
    print_status "Installing PDF/Graphic dependencies (Pango, Cairo)..."
    pkg install -y pango cairo harfbuzz libxml2 libxslt libffi
    
    print_success "Termux system dependencies & OpenCV installed!"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    print_status "Detected Linux system..."
    sudo apt-get update -qq
    sudo apt-get install -y python3-dev build-essential libpango-1.0-0 libpangoft2-1.0-0 libharfbuzz-dev libffi-dev libjpeg-dev libopenjp2-7-dev libpangocairo-1.0-0 libcairo2-dev pkg-config
    print_success "Linux dependencies installed!"
    
elif [[ "$OSTYPE" == "darwin"* ]]; then
    print_status "Detected macOS..."
    brew install pango cairo libffi libjpeg opencv
    print_success "macOS dependencies installed!"
fi

echo ""

# ============================================================================
# STEP 4: Upgrade pip
# ============================================================================
print_status "Step 4/7: Upgrading pip..."
python3 -m pip install --upgrade pip --break-system-packages 2>/dev/null || pip install --upgrade pip

# ============================================================================
# STEP 5: Install Python Packages
# ============================================================================
echo ""
print_status "Step 5/7: Installing Python packages..."
if [ -f "requirements.txt" ]; then
    # Di Termux, kita skip opencv-python di pip karena sudah diinstall via pkg
    if [ "$IS_TERMUX" = true ]; then
        sed -i '/opencv-python/d' requirements.txt 2>/dev/null || true
    fi
    pip3 install -r requirements.txt --break-system-packages 2>/dev/null || pip3 install -r requirements.txt
    print_success "Python packages installed!"
else
    print_warning "requirements.txt not found, skipping..."
fi

# ============================================================================
# STEP 6: Create Directories
# ============================================================================
echo ""
print_status "Step 6/7: Creating directories..."
mkdir -p output/reports output/screenshots output/logs output/face_detection data/cascades
print_success "Directories ready!"

# ============================================================================
# STEP 7: Test Installation
# ============================================================================
echo ""
print_status "Step 7/7: Testing installation..."
# Test OpenCV
if python3 -c "import cv2; print('OpenCV Version:', cv2.__version__)" &> /dev/null; then
    print_success "OpenCV is working!"
else
    print_error "OpenCV test failed!"
fi

if [ -f "test_enhanced_features.py" ]; then
    python3 test_enhanced_features.py || print_warning "Tests finished with some notes."
fi

echo ""
echo -e "${PURPLE}============================================================${NC}"
echo -e "${GREEN}              Installation Complete! ✓${NC}"
echo -e "${PURPLE}============================================================${NC}"
echo -e "   Run the tool: ${YELLOW}python3 main.py${NC}"
echo -e "${PURPLE}============================================================${NC}"
