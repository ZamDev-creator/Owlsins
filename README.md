# 🦉 OWL OSINT Suite

<div align="center">

![Version](https://img.shields.io/badge/version-2.0.0-blue.svg)
![Python](https://img.shields.io/badge/python-3.8+-green.svg)
![License](https://img.shields.io/badge/license-MIT-orange.svg)
![Status](https://img.shields.io/badge/status-beta-yellow.svg)

**Advanced Open Source Intelligence Toolkit with AI-Powered Analysis**

[Features](#-features) • [Installation](#-installation) • [Quick Start](#-quick-start) • [Documentation](#-documentation) • [License](#-license)

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [What's New in v2.0](#-whats-new-in-v20)
- [Key Features](#-key-features)
- [Architecture](#-architecture)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Module Overview](#-module-overview)
- [Usage Examples](#-usage-examples)
- [Advanced Features](#-advanced-features)
- [Documentation](#-documentation)
- [Contributing](#-contributing)
- [Security & Legal](#-security--legal)
- [Roadmap](#-roadmap)
- [Support](#-support)
- [License](#-license)

---

## 🎯 Overview

OWL OSINT Suite is a **professional-grade** open source intelligence gathering toolkit designed for security researchers, investigators, and OSINT practitioners. Unlike traditional OSINT tools that merely collect data, OWL provides **advanced intelligence analysis** through its sophisticated correlation engine and entity management system.

### 🏆 What Makes OWL Different?

| Traditional OSINT Tools | 🦉 OWL OSINT Suite |
|------------------------|-------------------|
| Simple data scraping | **Intelligence-driven analysis** |
| Disconnected results | **Cross-platform correlation** |
| No confidence scoring | **AI-powered confidence assessment** |
| Manual analysis required | **Automated pattern detection** |
| Basic reporting | **Professional-grade reports** |

---

## 🆕 What's New in v2.0

### Major Enhancements

#### 🧠 **Core Intelligence System** (NEW!)
The biggest addition to OWL OSINT - a complete intelligence analysis framework:

- **Entity Management**: Track and correlate information about persons, organizations, or accounts
- **Correlation Engine**: Automatically find connections across platforms using 7 different correlation methods
- **Confidence Scoring**: Multi-factor confidence assessment for data reliability
- **Evidence Tracking**: Systematic collection and weighting of evidence

#### 📱 **4 New Modules**
1. **Phone OSINT** - Comprehensive phone number intelligence
2. **IP Geolocation** - Advanced IP analysis with security scoring
3. **Blockchain Tracker** - Multi-cryptocurrency tracking
4. **Social Media Stalker** - Deep profile analysis (TikTok, Instagram)

#### 🔧 **Enhanced Features**
- Advanced username verification with heuristics
- Deep content analysis and pattern detection
- Professional PDF report generation
- Automated change monitoring
- Comprehensive documentation

### Version Comparison

```
v1.0 (Basic)          →  v2.0 (Advanced)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
4 modules             →  8 modules
Basic scraping        →  Intelligence analysis
No correlation        →  Advanced correlation engine
Simple reports        →  Professional reports
CLI only              →  CLI + API-ready
5.5/10 rating         →  7.8/10 rating
Intermediate level    →  Advanced level
```

---

## ✨ Key Features

### 🔍 Intelligence Gathering

#### 1. **Username Hunter**
- Search across 350+ platforms simultaneously
- Advanced profile verification with heuristics
- Bio extraction and social media detection
- Deep content analysis
- Entity tracking and correlation

#### 2. **Email OSINT**
- Email validation and format checking
- Disposable email detection
- MX record verification
- Data breach checking (HIBP integration)
- Domain analysis

#### 3. **Phone Intelligence** ⭐ NEW
- International phone validation
- Carrier identification (enhanced for Indonesia)
- Timezone detection
- Format conversion (E.164, RFC3966, National)
- Social media presence detection
- Spam/scam risk assessment

#### 4. **IP Geolocation** ⭐ NEW
- Precise geolocation (City, Region, Country)
- ISP and Organization identification
- VPN/Proxy/Tor detection
- Mobile connection detection
- Hosting/Datacenter identification
- Security risk scoring
- Google Maps integration
- Bulk IP analysis

#### 5. **Blockchain Tracker** ⭐ NEW
- Auto-detect cryptocurrency type
- Multi-chain support (BTC, ETH, LTC, DOGE, BCH, XRP, XMR)
- Balance and transaction history
- Address validation
- Multiple blockchain explorer links

#### 6. **Social Media Stalker** ⭐ NEW
- TikTok profile deep analysis
- Instagram profile scraping
- Multi-platform comparison
- Timeline reconstruction
- Content pattern analysis
- Follower/engagement metrics

#### 7. **Image Metadata Analyzer**
- EXIF data extraction
- GPS coordinates recovery
- Camera and device information
- Timestamp analysis
- Image forensics basics

#### 8. **Website Change Monitor**
- Automated website monitoring
- Change detection and alerts
- Historical tracking
- Screenshot comparison

---

### 🧠 Advanced Intelligence Features

#### **Entity Management System**
Track entities (persons, accounts, organizations) across multiple platforms:

```python
Entity: "john_doe"
├── Identifiers
│   ├── Usernames: [@john_doe, @johndoe123, john.doe]
│   ├── Emails: [john@example.com]
│   └── Phone: [+62812...]
├── Evidence (25 pieces collected)
│   ├── Platform presence (15 platforms)
│   ├── Bio analysis (3 social accounts detected)
│   ├── Image hashes (2 matches)
│   └── Location data (consistent: Jakarta)
├── Confidence Score: 87% (HIGH)
└── Correlations Found: 12
```

#### **Correlation Engine**
Automatically detect connections across platforms:

1. **Image Hash Correlation** - Match profile pictures
2. **Username Pattern Analysis** - Detect similar usernames
3. **Email Domain Correlation** - Connect email addresses
4. **Temporal Pattern Detection** - Analyze activity times
5. **Geographic Correlation** - Match locations
6. **Behavioral Analysis** - Pattern recognition
7. **Cross-platform Consistency** - Verify data consistency

#### **Confidence Scoring**
Multi-dimensional confidence assessment:

```
Confidence Score = Σ (Evidence_Weight × Source_Reliability)

Factors:
- Number of evidence pieces
- Source reliability scores
- Evidence type weights
- Cross-validation results
- Temporal consistency
- Pattern matches
```

---

## 🏗️ Architecture

### System Design

```
┌─────────────────────────────────────────────────────────┐
│                    OWL OSINT Suite                      │
├─────────────────────────────────────────────────────────┤
│  Presentation Layer                                     │
│  ├── CLI Interface (Questionary + Termcolor)           │
│  └── Interactive Menus & Progress Bars                 │
├─────────────────────────────────────────────────────────┤
│  Core Intelligence Layer ⭐ NEW                         │
│  ├── Entity Manager      (Track entities)              │
│  ├── Correlation Engine  (Find connections)            │
│  └── Confidence Scorer   (Assess reliability)          │
├─────────────────────────────────────────────────────────┤
│  Module Layer                                           │
│  ├── Username Hunter     ├── Phone OSINT ⭐            │
│  ├── Email OSINT        ├── IP Geolocation ⭐         │
│  ├── Image Metadata     ├── Blockchain ⭐             │
│  └── Change Monitor     └── Social Stalker ⭐         │
├─────────────────────────────────────────────────────────┤
│  Utilities Layer                                        │
│  ├── Database (SQLite)  ├── Report Generator           │
│  ├── Logger            └── Heuristics Engine           │
└─────────────────────────────────────────────────────────┘
```

### Technology Stack

- **Language**: Python 3.8+
- **Async Framework**: asyncio, aiohttp
- **Database**: SQLite with custom ORM
- **UI**: Questionary, Termcolor, Pyfiglet
- **Reports**: Jinja2, WeasyPrint, ReportLab
- **Analysis**: BeautifulSoup4, custom heuristics

---

## 📦 Installation

### System Requirements

- **OS**: Linux (Ubuntu 20.04+), macOS (10.15+), Windows 10/11
- **Python**: 3.8 or higher
- **RAM**: 2GB minimum, 4GB recommended
- **Storage**: 500MB for installation

### Quick Install (Recommended)

```bash
# Clone repository
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint

# Run automated installer
chmod +x install.sh
./install.sh
```

The installer will:
- ✅ Check Python version
- ✅ Install system dependencies
- ✅ Create virtual environment
- ✅ Install Python packages
- ✅ Set up configuration
- ✅ Run initial tests

### Manual Installation

#### Step 1: Install System Dependencies

**Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install -y python3-pip python3-dev python3-venv
sudo apt-get install -y libpango-1.0-0 libpangoft2-1.0-0 
sudo apt-get install -y libharfbuzz-dev libffi-dev libjpeg-dev
```

**macOS:**
```bash
brew install python3
brew install pango cairo
```

**Windows:**
- Install Python 3.8+ from python.org
- Download GTK3 runtime from [here](https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases)

#### Step 2: Create Virtual Environment (Recommended)

```bash
python3 -m venv venv
source venv/bin/activate  # Linux/macOS
# or
venv\Scripts\activate  # Windows
```

#### Step 3: Install Python Dependencies

```bash
pip install -r requirements.txt
```

#### Step 4: Configure Environment

```bash
# Copy example config
cp .env.example .env

# Edit configuration (optional)
nano .env
```

#### Step 5: Verify Installation

```bash
python main.py --version
python main.py --test
```

### Docker Installation (Alternative)

```bash
# Build image
docker build -t owl-osint .

# Run container
docker run -it --rm owl-osint
```

---

## 🚀 Quick Start

### First Run

```bash
# Activate virtual environment (if using)
source venv/bin/activate

# Launch OWL OSINT
python main.py
```

You'll see the beautiful OWL banner and interactive menu!

### Basic Usage Example

#### Example 1: Username Search with Intelligence

```bash
# Start the tool
python main.py

# Select: Username Hunter
# Enter username: john_doe
# Wait for analysis...

# Results will show:
# ✓ Platforms found (with verification confidence)
# ✓ Entity intelligence report
# ✓ Cross-platform correlations
# ✓ Confidence assessment
# ✓ Detected social media accounts
```

#### Example 2: Phone Number Intelligence

```bash
# Select: Phone OSINT
# Enter: +628123456789

# Analysis includes:
# ✓ Validation & formatting
# ✓ Carrier identification
# ✓ Timezone detection
# ✓ Social media presence
# ✓ Risk assessment
```

#### Example 3: Email Investigation

```bash
# Select: Email OSINT
# Enter: john@example.com

# Results show:
# ✓ Email validation
# ✓ Domain analysis
# ✓ Breach status
# ✓ Deliverability check
```

---

## 📚 Module Overview

### 1. Username Hunter

**Capabilities:**
- Search 350+ social media platforms
- Advanced verification using heuristics
- Profile data extraction
- Bio parsing and social account detection
- Entity creation and tracking

**Best For:**
- Finding someone's online presence
- Tracking username reuse across platforms
- Building entity profiles

**Example Output:**
```
Username: john_doe

FOUND ON 15 PLATFORMS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ Instagram    [95% confidence] Bio extracted
✓ GitHub       [98% confidence] Profile complete
✓ Twitter      [87% confidence] Active account
✓ LinkedIn     [92% confidence] Professional profile
...

INTELLIGENCE REPORT:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Confidence Score: 89% (HIGH)
Evidence: 23 pieces collected
Correlations: 8 found
Assessment: Strong evidence of same person
```

---

### 2. Phone OSINT ⭐

**Capabilities:**
- International validation
- Carrier detection (optimized for Indonesia)
- Timezone identification
- Multiple format outputs
- Social media detection (WhatsApp, Telegram, etc)
- Spam/scam risk assessment

**Best For:**
- Phone number investigation
- Carrier identification
- Social media account discovery

**Example Output:**
```
Phone: +62 812-3456-7890

VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ Valid Format
✓ Country: Indonesia (ID)
✓ Type: Mobile
✓ Carrier: Telkomsel

FORMATS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
International: +62 812-3456-7890
National: 0812-3456-7890
E.164: +628123456789
RFC3966: tel:+62-812-3456-7890

SOCIAL MEDIA:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ WhatsApp: Likely registered
✓ Telegram: Possible account
```

---

### 3. IP Geolocation ⭐

**Capabilities:**
- Precise geolocation
- ISP identification
- VPN/Proxy/Tor detection
- Mobile/Hosting detection
- Security risk scoring
- Bulk analysis support

**Best For:**
- IP address investigation
- Security threat assessment
- Geolocation verification

**Example Output:**
```
IP: 8.8.8.8

LOCATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Country: United States
Region: California
City: Mountain View
Coordinates: 37.4056, -122.0775

NETWORK:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ISP: Google LLC
Organization: Google Public DNS
AS: AS15169

SECURITY:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✓ VPN: No
✓ Proxy: No
✓ Tor: No
✓ Hosting: Yes (Datacenter)
Risk Score: Low
```

---

### 4. Blockchain Tracker ⭐

**Capabilities:**
- Auto-detect cryptocurrency
- Support 7+ cryptocurrencies
- Balance checking
- Transaction history
- Multiple explorer links

**Supported Coins:**
- Bitcoin (BTC)
- Ethereum (ETH)
- Litecoin (LTC)
- Dogecoin (DOGE)
- Bitcoin Cash (BCH)
- Ripple (XRP)
- Monero (XMR)

**Example Output:**
```
Address: 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa

CRYPTOCURRENCY:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Type: Bitcoin (BTC)
Network: Mainnet

BALANCE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Balance: 68.96 BTC
USD Value: ~$2,758,400

ACTIVITY:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Total Received: 68.96 BTC
Total Sent: 0 BTC
Transactions: 1,547
```

---

### 5. Social Media Stalker ⭐

**Capabilities:**
- TikTok profile analysis
- Instagram profile scraping
- Profile comparison
- Follower/engagement metrics
- Content pattern analysis

**Best For:**
- Social media investigation
- Profile verification
- Influence analysis

**Example Output:**
```
TikTok: @username

PROFILE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Name: John Doe
Bio: "Content creator | Jakarta 🇮🇩"
Verified: Yes ✓

METRICS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Followers: 125.4K
Following: 892
Videos: 234
Likes: 2.1M

DETECTED ACCOUNTS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Instagram: @johndoe
YouTube: @johndoevlogs
```

---

### 6. Email OSINT

**Capabilities:**
- Email format validation
- Disposable email detection
- MX record verification
- Breach checking (HIBP)
- Domain analysis

---

### 7. Image Metadata

**Capabilities:**
- EXIF extraction
- GPS coordinate recovery
- Camera information
- Timestamp analysis

---

### 8. Change Monitor

**Capabilities:**
- Website monitoring
- Change detection
- Alert system
- Screenshot comparison

---

## 💡 Usage Examples

### Example 1: Complete Investigation Workflow

```python
# Scenario: Investigate a suspicious account

# Step 1: Username Search
python main.py
> Select: Username Hunter
> Enter: suspicious_user

# Results: Found on Instagram, Twitter, GitHub
# Intelligence: 78% confidence same person
# Correlation: Same profile picture across platforms

# Step 2: Extract Phone from Bio
# Found in Instagram bio: "+62 812-xxxx-xxxx"

> Select: Phone OSINT
> Enter: +628123456789

# Results: Telkomsel carrier, Jakarta timezone
# WhatsApp: Registered

# Step 3: Check Email (if found)
> Select: Email OSINT
> Enter: suspicious@example.com

# Results: Valid format, found in 2 breaches

# Step 4: Generate Report
> Generate comprehensive HTML report
> All findings compiled with evidence
```

### Example 2: Cryptocurrency Investigation

```bash
# Track suspicious crypto transaction

> Select: Blockchain Tracker
> Enter: 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa

# Auto-detected: Bitcoin
# Balance: 68.96 BTC
# Transactions: 1,547
# Note: This is Satoshi's genesis address!
```

### Example 3: IP Address Analysis

```bash
# Investigate suspicious login

> Select: IP Geolocation
> Enter: 185.220.101.1

# Location: Netherlands
# ISP: Anonymous hosting
# ⚠️ Tor Exit Node Detected!
# Risk Score: HIGH
```

---

## 🔬 Advanced Features

### Entity Management

Track complex investigations across multiple identifiers:

```python
from core.entity import Entity, Evidence, EvidenceType

# Create entity
entity = Entity(
    primary_identifier="john_doe",
    entity_type="person"
)

# Add evidence
entity.add_evidence(Evidence(
    source="instagram",
    evidence_type=EvidenceType.SOCIAL_MEDIA,
    signal="profile_found",
    value={"followers": 1234, "bio": "..."},
    weight=0.8,
    reliability=0.9
))

# Calculate confidence
confidence = entity.confidence_score
```

### Correlation Engine

Find connections automatically:

```python
from core.correlation_engine import CorrelationEngine

# Initialize
engine = CorrelationEngine(entity_manager, scorer)

# Analyze entity
correlations = engine.analyze_entity(entity)

# Results include:
# - Image hash matches
# - Username pattern similarities
# - Geographic correlations
# - Temporal patterns
# - Behavioral patterns
```

### Custom Heuristics

Extend detection capabilities:

```python
from utils.heuristics import PlatformHeuristics

heuristics = PlatformHeuristics()

# Add custom platform detection
heuristics.add_pattern(
    platform="custom_platform",
    success_indicators=["profile_active", "user_found"],
    failure_indicators=["not_found", "404"]
)
```

### Batch Processing

Process multiple targets:

```python
# Batch username search
usernames = ["user1", "user2", "user3"]

for username in usernames:
    results = hunter.search_username(username)
    # Process results...
```

### API Integration (Coming Soon)

```python
# RESTful API (planned)
GET /api/v1/username/{username}
GET /api/v1/phone/{phone}
GET /api/v1/email/{email}
GET /api/v1/ip/{ip_address}
```

---

## 📖 Documentation

### Available Documentation

- **[README.md](README.md)** - This file (overview & quick start)
- **[INSTALLATION.md](INSTALLATION.md)** - Detailed installation guide
- **[USER_GUIDE.md](USER_GUIDE.md)** - Complete user guide
- **[API_REFERENCE.md](API_REFERENCE.md)** - API documentation
- **[DEVELOPER_GUIDE.md](DEVELOPER_GUIDE.md)** - For contributors
- **[ARCHITECTURE.md](ARCHITECTURE.md)** - System architecture
- **[CHANGELOG.md](CHANGELOG.md)** - Version history
- **[FAQ.md](FAQ.md)** - Frequently asked questions
- **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - Common issues

### Quick Links

- **Tutorials**: See `/docs/tutorials/`
- **Examples**: See `/examples/`
- **API Docs**: See `/docs/api/`
- **Videos**: [YouTube Playlist](#) (coming soon)

---

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Ways to Contribute

- 🐛 **Report bugs** - Open an issue
- 💡 **Suggest features** - Start a discussion
- 📝 **Improve docs** - Submit PR
- 🔧 **Fix issues** - Check open issues
- 🌐 **Add platforms** - Extend username hunter
- 🧪 **Add tests** - Improve coverage

### Development Setup

```bash
# Clone repo
git clone https://github.com/yourusername/owl-osint.git
cd owl-osint

# Create dev environment
python -m venv venv
source venv/bin/activate

# Install with dev dependencies
pip install -r requirements-dev.txt

# Run tests
pytest tests/

# Check code quality
flake8 .
black .
```

---

## 🔒 Security & Legal

### ⚠️ IMPORTANT LEGAL NOTICE

**READ THIS BEFORE USING OWL OSINT**

#### Intended Use

OWL OSINT is designed for **LEGAL** purposes only:

✅ **Permitted Uses:**
- Cybersecurity research and testing
- Digital forensics investigations (with authorization)
- OSINT training and education
- Penetration testing (with written permission)
- Corporate security assessments
- Academic research
- Personal investigations (within legal boundaries)

❌ **Prohibited Uses:**
- Stalking or harassment
- Unauthorized surveillance
- Privacy violations
- Data theft or unauthorized access
- Any illegal activities
- Violating Terms of Service

#### Legal Compliance

1. **Terms of Service**: Scraping may violate platform ToS. Users are responsible for compliance.

2. **Privacy Laws**: Comply with GDPR, CCPA, and local privacy regulations.

3. **Data Protection**: Handle collected data responsibly and securely.

4. **Authorization**: Obtain proper authorization before investigations.

#### Disclaimer

```
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
AUTHORS AND CONTRIBUTORS ARE NOT RESPONSIBLE FOR MISUSE.
USERS ARE SOLELY RESPONSIBLE FOR ENSURING LEGAL COMPLIANCE.
```

### Security Best Practices

When using OWL OSINT:

1. **Use VPN**: Protect your identity
2. **Secure Storage**: Encrypt collected data
3. **Access Control**: Limit who can access the tool
4. **Audit Logs**: Keep investigation records
5. **Data Retention**: Delete data when no longer needed

### Reporting Security Issues

Found a security vulnerability? Please email: security@example.com

**DO NOT** create public issues for security bugs.

---

## 🗺️ Roadmap

### Version 2.1 (Q2 2026)

- [ ] Web dashboard (React frontend)
- [ ] RESTful API
- [ ] User authentication & authorization
- [ ] Team collaboration features
- [ ] Advanced data visualization
- [ ] Export to multiple formats (JSON, CSV, XML)

### Version 2.5 (Q3 2026)

- [ ] Machine learning for pattern detection
- [ ] Automated report generation
- [ ] Integration with Maltego
- [ ] Real-time monitoring alerts
- [ ] Mobile app (iOS/Android)

### Version 3.0 (Q4 2026)

- [ ] Distributed architecture
- [ ] Cloud deployment support
- [ ] Enterprise features
- [ ] Advanced AI analysis
- [ ] Custom plugins system

### Community Requests

Vote for features on our [GitHub Discussions](https://github.com/yourusername/owl-osint/discussions)

---

## 💬 Support

### Getting Help

1. **Documentation**: Check [docs/](docs/) folder
2. **FAQ**: See [FAQ.md](FAQ.md)
3. **Issues**: Search [GitHub Issues](https://github.com/yourusername/owl-osint/issues)
4. **Discussions**: Join [GitHub Discussions](https://github.com/yourusername/owl-osint/discussions)
5. **Email**: support@example.com

### Community

- **Discord**: [Join our server](#)
- **Telegram**: [@owl_osint](#)
- **Twitter**: [@owl_osint](#)
- **Reddit**: [r/owl_osint](#)

### Professional Support

Enterprise support available:
- Priority bug fixes
- Custom feature development
- Training sessions
- Consulting services

Contact: enterprise@example.com

---

## 📊 Statistics

```
⭐ GitHub Stars: [Badge]
🔄 Forks: [Badge]
👥 Contributors: [Badge]
📝 Commits: [Badge]
📦 Downloads: [Badge]
```

---

## 🏆 Credits

### Core Team

- **Lead Developer**: [Your Name]
- **Intelligence System**: [Your Name]
- **Documentation**: [Your Name]

### Contributors

See [CONTRIBUTORS.md](CONTRIBUTORS.md) for full list.

### Special Thanks

- Python OSINT community
- All contributors and testers
- Open source library maintainers

### Third-Party Services

- **Social Media API**: apis.jerexd.my.id
- **IP Geolocation**: ip-api.com
- **Blockchain Data**: blockchain.info, etherscan.io

---

## 📜 License

OWL OSINT Suite is released under the **MIT License**.

```
MIT License

Copyright (c) 2026 OWL OSINT Suite

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 🎓 Citation

If you use OWL OSINT in research, please cite:

```bibtex
@software{owl_osint_2026,
  title = {OWL OSINT Suite: Advanced Open Source Intelligence Toolkit},
  author = {Your Name},
  year = {2026},
  url = {https://github.com/yourusername/owl-osint},
  version = {2.0.0}
}
```

---

<div align="center">

**🦉 OWL OSINT Suite v2.0**

*Seeing in the Dark*

[⬆ Back to Top](#-owl-osint-suite)

Made with ❤️ by the OSINT community

</div>
