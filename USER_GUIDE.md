# 📖 User Guide - OWL OSINT Suite v2.0

Complete guide for using all features of OWL OSINT.

---

## 📋 Table of Contents

1. [Getting Started](#getting-started)
2. [Interface Overview](#interface-overview)
3. [Module Guides](#module-guides)
4. [Advanced Features](#advanced-features)
5. [Reports & Exports](#reports--exports)
6. [Best Practices](#best-practices)
7. [Tips & Tricks](#tips--tricks)

---

## 🚀 Getting Started

### Launching OWL OSINT

```bash
# Navigate to directory
cd owl-osint

# Activate virtual environment
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# Launch
python main.py
```

### First Time Setup

On first run, OWL OSINT will:
1. Create necessary directories
2. Initialize database
3. Load platform configurations
4. Display welcome banner

---

## 🖥️ Interface Overview

### Main Menu

```
╔═══════════════════════════════════════════╗
║           🦉 OWL OSINT SUITE             ║
║         Advanced Intelligence Tool        ║
╠═══════════════════════════════════════════╣
║                                           ║
║  1. 👤 Username Hunter                    ║
║  2. 📧 Email OSINT                        ║
║  3. 🖼️  Image Metadata                    ║
║  4. 🔄 Change Monitor                     ║
║  5. 📱 Phone OSINT                        ║
║  6. 🌐 IP Geolocation                     ║
║  7. ₿  Blockchain Tracker                 ║
║  8. 👁️  Social Media Stalker              ║
║                                           ║
║  9. ⚙️  Settings                          ║
║  0. 🚪 Exit                               ║
║                                           ║
╚═══════════════════════════════════════════╝
```

### Navigation

- **Arrow Keys**: Navigate menu options
- **Enter**: Select option
- **Ctrl+C**: Cancel current operation
- **Type number**: Quick select

---

## 📚 Module Guides

### 1. Username Hunter

#### Basic Search

```
1. Select: Username Hunter
2. Enter username: john_doe
3. Wait for analysis...
4. View results
```

#### What You'll See

**Phase 1: Platform Scanning**
```
Checking 350+ platforms...
[████████████████████████] 100%

FOUND ON 15 PLATFORMS:
✓ Instagram    [95% confidence]
✓ GitHub       [98% confidence]
✓ Twitter      [87% confidence]
...
```

**Phase 2: Intelligence Report**
```
📊 INTELLIGENCE REPORT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Target: john_doe
Confidence Score: 89% [HIGH]
Entity Type: person
Evidence Collected: 23 pieces

📋 Identifiers Found:
  • username: john_doe, johndoe123, john.doe
  • email: john@example.com
  • location: Jakarta, Indonesia

🌐 Active Platforms:
  • Instagram: 95% confidence | Profile [█████████░] 90%
  • GitHub: 98% confidence | Profile [██████████] 100%
  • Twitter: 87% confidence | Profile [████████░░] 80%
```

**Phase 3: Correlations**
```
🔗 CORRELATIONS FOUND:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

• Image Hash Match
  🟢 Strength: 90%
  Evidence: Same avatar across Instagram ↔ GitHub
  Platforms: Instagram, GitHub

• Username Pattern
  🟡 Strength: 75%
  Evidence: Consistent naming pattern
  Usernames: john_doe, johndoe123, john.doe

• Geographic Correlation
  🟡 Strength: 70%
  Evidence: Consistent location (Jakarta)
  Platforms: Instagram, Twitter, LinkedIn
```

#### Advanced Options

**1. Deep Verification (Manual Check)**

For priority platforms (Instagram, TikTok, GitHub, Twitter, LinkedIn), OWL performs manual verification:

```
🔍 Manual verification for Instagram...
  ✓ Profile exists
  ✓ Username matches
  ✓ Bio extracted
  ✓ Follower count verified
  ✓ Posts accessible
  → Confidence: 95%
```

**2. Bio Extraction**

Automatically extracts bios and detects social media accounts:

```
📝 BIO ANALYSIS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Instagram Bio:
"Software Developer | Jakarta 🇮🇩
📧 john@example.com
🎵 TikTok: @johndoe_music"

DETECTED ACCOUNTS:
  ✓ Email: john@example.com
  ✓ TikTok: @johndoe_music
  ✓ Location: Jakarta
```

#### Generating Reports

```
Generate HTML report? [Y/n]: y

📄 Report saved: output/reports/username_john_doe_20260128_143022.html

Open in browser? [Y/n]: y
```

---

### 2. Email OSINT

#### Basic Email Analysis

```
1. Select: Email OSINT
2. Enter email: john@example.com
3. View analysis
```

#### Analysis Results

```
📊 ANALYSIS RESULTS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Email: john@example.com

  ✅ Format Valid: Yes
  ✅ Disposable: No
  🌐 Domain: example.com
  ✅ MX Records: Yes (Valid mail server)

🔒 BREACH STATUS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ⚠️  WARNING: Found in 2 breach(es)!
  
  Breaches:
  • LinkedIn (2021) - 700M users
  • Adobe (2013) - 152M users
  
  → Recommendation: Change passwords immediately!
  → Enable 2FA on all accounts
```

#### API Integration

For breach checking, you need HIBP API key:

```bash
# Add to .env file
HIBP_API_KEY=your_key_here
```

Get key from: https://haveibeenpwned.com/API/Key

---

### 3. Phone OSINT

#### International Phone Analysis

```
1. Select: Phone OSINT
2. Enter: +628123456789
3. View comprehensive analysis
```

#### Results Example

```
📱 PHONE INTELLIGENCE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Phone: +62 812-3456-7890

VALIDATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ✅ Valid Format
  ✅ Type: Mobile
  🌍 Country: Indonesia (ID) 🇮🇩
  📍 Region: DKI Jakarta
  ⏰ Timezone: Asia/Jakarta (WIB, UTC+7)
  📡 Carrier: Telkomsel (PT Telekomunikasi Selular)

FORMATS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  International: +62 812-3456-7890
  National: 0812-3456-7890
  E.164: +628123456789
  RFC3966: tel:+62-812-3456-7890

SOCIAL MEDIA PRESENCE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ✅ WhatsApp: Likely registered
  ⚠️  Telegram: Possible account
  ❓ Viber: Unknown
  ❓ Signal: Unknown

RISK ASSESSMENT:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Spam Risk: Low
  Known Carrier: Yes (Trusted)
  Disposable: No
```

#### Supported Countries

OWL supports phone validation for 200+ countries. Enhanced carrier detection for:
- 🇮🇩 Indonesia (Telkomsel, Indosat, XL, Tri, Smartfren)
- 🇺🇸 United States
- 🇬🇧 United Kingdom
- 🇦🇺 Australia
- And many more...

---

### 4. IP Geolocation

#### Basic IP Lookup

```
1. Select: IP Geolocation
2. Choose action:
   • Lookup specific IP
   • Get my public IP
   • Bulk lookup from file
3. Enter IP: 8.8.8.8
```

#### Results Example

```
🌐 IP GEOLOCATION INTELLIGENCE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

IP Address: 8.8.8.8

LOCATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  🌍 Country: United States (US) 🇺🇸
  🏙️  Region: California
  📍 City: Mountain View
  📮 ZIP: 94043
  📐 Coordinates: 37.4056°N, 122.0775°W
  🗺️  Google Maps: [Link]

NETWORK:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  🏢 ISP: Google LLC
  🏭 Organization: Google Public DNS
  🔢 AS: AS15169 Google LLC
  🌐 Connection: Corporate

SECURITY ANALYSIS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  🔒 VPN: No
  🔒 Proxy: No
  🔒 Tor Exit Node: No
  📱 Mobile: No
  🏢 Hosting/Datacenter: Yes

RISK SCORE: ■□□□□ LOW (1/5)
  ✅ Legitimate service provider
  ✅ Well-known organization
  ✅ No anonymization detected
```

#### Bulk IP Analysis

Create file `ips.txt`:
```
8.8.8.8
1.1.1.1
185.220.101.1
```

Then:
```
Select: IP Geolocation
Choose: Bulk lookup from file
Enter file path: ips.txt
```

Results saved to CSV for easy analysis.

---

### 5. Blockchain Tracker

#### Cryptocurrency Address Analysis

```
1. Select: Blockchain Tracker
2. Enter address: 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa
3. Auto-detection & analysis
```

#### Results Example

```
₿ BLOCKCHAIN INTELLIGENCE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Address: 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa

CRYPTOCURRENCY:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Type: Bitcoin (BTC)
  Network: Mainnet
  Valid: Yes ✓

BALANCE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Current Balance: 68.96287023 BTC
  USD Value: ~$2,758,400 (@ $40,000/BTC)

ACTIVITY SUMMARY:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Total Received: 68.96287023 BTC
  Total Sent: 0 BTC
  Total Transactions: 1,547
  First Seen: 2009-01-03 (Genesis Block!)
  Last Activity: 2024-12-15

RECENT TRANSACTIONS (Latest 5):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  1. 0.05 BTC received (2024-12-15)
  2. 0.1 BTC received (2024-11-28)
  3. 1.0 BTC received (2024-10-10)
  ...

BLOCKCHAIN EXPLORERS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  • Blockchain.com: [Link]
  • Blockchair: [Link]
  • BTC.com: [Link]

ℹ️  NOTE: This is Satoshi Nakamoto's address!
```

#### Supported Cryptocurrencies

- ₿ Bitcoin (BTC)
- Ξ Ethereum (ETH)
- Ł Litecoin (LTC)
- Ð Dogecoin (DOGE)
- Bitcoin Cash (BCH)
- Ripple (XRP)
- Monero (XMR)

---

### 6. Social Media Stalker

#### TikTok Profile Analysis

```
1. Select: Social Media Stalker
2. Choose: Stalk TikTok profile
3. Enter username (without @): username
```

#### Results Example

```
👁️  TIKTOK PROFILE INTELLIGENCE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Username: @username

PROFILE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  👤 Name: John Doe
  📝 Bio: "Content creator | Jakarta 🇮🇩"
  ✅ Verified: Yes
  🔒 Private: No
  📅 Joined: 2020-05-15

METRICS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  👥 Followers: 125,432
  👣 Following: 892
  🎬 Videos: 234
  ❤️  Total Likes: 2,147,893
  
  Engagement Rate: 1.71%
  Avg Views: 50.2K per video

DETECTED ACCOUNTS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  From Bio Analysis:
  ✓ Instagram: @johndoe
  ✓ YouTube: @johndoevlogs
  ✓ Email: john@example.com

CONTENT ANALYSIS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Top Categories: Comedy, Lifestyle, Tech
  Posting Frequency: 3-4 videos/week
  Best Time: Evenings (18:00-21:00 WIB)
  Most Viral Video: 1.2M views
```

#### Instagram Analysis

Similar to TikTok, but includes:
- Business account detection
- External URL links
- IGTV/Reels analysis
- Story highlights

#### Multi-Platform Comparison

```
Choose: Compare TikTok vs Instagram
Enter username: johndoe

Generates side-by-side comparison report
```

---

### 7. Image Metadata

#### EXIF Data Extraction

```
1. Select: Image Metadata
2. Enter image path: /path/to/image.jpg
3. View extracted data
```

#### Results Example

```
🖼️  IMAGE METADATA ANALYSIS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

File: photo_2024.jpg

BASIC INFO:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Format: JPEG
  Size: 2.4 MB (2,457,600 bytes)
  Dimensions: 4000 × 3000 pixels
  Color Space: RGB

CAMERA:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Make: Canon
  Model: Canon EOS 5D Mark IV
  Lens: EF24-70mm f/2.8L II USM
  
SETTINGS:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ISO: 400
  Aperture: f/2.8
  Shutter Speed: 1/125s
  Focal Length: 50mm
  Flash: Off

TIMESTAMP:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Date Taken: 2024-08-15 14:32:18
  Modified: 2024-08-15 15:10:05

GPS LOCATION:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  ✅ GPS Data Found!
  Latitude: -6.2088° S
  Longitude: 106.8456° E
  Altitude: 15m
  Location: Jakarta, Indonesia 🇮🇩
  Google Maps: [Link]

SOFTWARE:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  Edited with: Adobe Photoshop CC 2024
```

---

### 8. Change Monitor

#### Website Monitoring

```
1. Select: Change Monitor
2. Choose: Add new monitor
3. Enter URL: https://example.com
4. Set check interval: 3600 (1 hour)
```

#### Monitor Dashboard

```
🔄 ACTIVE MONITORS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. example.com
   Status: ✓ No changes
   Last Check: 2 minutes ago
   Changes Detected: 0

2. target-site.com
   Status: ⚠️  CHANGED!
   Last Check: 5 minutes ago
   Changes: Content modified (2 sections)
   
   View Changes: [Y/n]
```

#### Change Details

```
📊 CHANGE DETAILS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

URL: https://target-site.com
Detected: 2024-01-28 15:30:45

CHANGES:
  • Section "Pricing" modified
    - Old: "$99/month"
    - New: "$79/month"
  
  • New element added: "Special Offer Banner"
  
  • Footer updated

Screenshots saved:
  • Before: output/screenshots/before_20240128_153045.png
  • After: output/screenshots/after_20240128_153045.png
```

---

## 🔬 Advanced Features

### Entity Management

#### Creating Entities

Entities are automatically created during searches, but you can also create manually:

```python
from core.entity import Entity, Evidence, EvidenceType

# Create entity
entity = Entity(
    primary_identifier="john_doe",
    entity_type="person"
)

# Add identifiers
entity.identifiers['email'] = ['john@example.com']
entity.identifiers['phone'] = ['+628123456789']

# Add evidence
entity.add_evidence(Evidence(
    source="instagram",
    evidence_type=EvidenceType.SOCIAL_MEDIA,
    signal="profile_found",
    value={"username": "john_doe"},
    weight=0.8,
    reliability=0.9
))
```

#### Viewing Entity Data

```
After any search, view entity:

📊 ENTITY REPORT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Entity: john_doe
Type: person
Confidence: 87% (HIGH)

Identifiers:
  • usernames: [john_doe, johndoe123]
  • emails: [john@example.com]
  • phones: [+628123456789]

Evidence: 25 pieces
  • High confidence: 15
  • Medium confidence: 8
  • Low confidence: 2

Platforms:
  • Instagram (95%)
  • GitHub (98%)
  • Twitter (87%)
  ...
```

### Correlation Analysis

Automatically finds connections:

```
🔗 CORRELATION ANALYSIS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Image Hash Match (90% strength)
   Same profile picture:
   • Instagram → GitHub
   
2. Username Pattern (75% strength)
   Similar naming:
   • john_doe
   • johndoe123
   • john.doe
   
3. Geographic Match (70% strength)
   Consistent location:
   • All profiles: Jakarta, Indonesia
```

### Confidence Scoring

```
💯 CONFIDENCE BREAKDOWN
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Base Score: 65%
+ Profile completeness: +10%
+ Cross-platform match: +15%
+ Image hash match: +12%
- Inconsistent data: -5%
────────────────
FINAL: 87% (HIGH)

Interpretation:
✅ Strong evidence of same person
✅ Multiple verification points
✅ Consistent patterns across platforms
```

---

## 📄 Reports & Exports

### HTML Reports

```
Generate HTML report? [Y/n]: y

Creating professional report...
  ✓ Gathering data
  ✓ Analyzing evidence
  ✓ Generating correlations
  ✓ Creating visualizations
  ✓ Building HTML

📄 Report saved: output/reports/report_20240128_153045.html

Report includes:
  • Executive summary
  • Detailed findings
  • Evidence catalog
  • Correlation analysis
  • Interactive charts
  • All screenshots
  • Confidence assessment
```

### PDF Reports

```
Generate PDF report? [Y/n]: y

⚠️  Note: PDF generation may take 30-60 seconds

Creating PDF...
  ✓ Rendering HTML
  ✓ Processing images
  ✓ Generating PDF

📄 PDF saved: output/reports/report_20240128_153045.pdf
```

### Data Export

```
Export Options:
1. JSON (structured data)
2. CSV (tabular data)
3. XML (interchange format)

Select format: 1

📦 Exported: output/data/export_20240128_153045.json
```

---

## ✨ Best Practices

### 1. Legal & Ethical Use

**DO:**
- ✅ Get proper authorization
- ✅ Respect privacy laws
- ✅ Use for legitimate purposes
- ✅ Document your process
- ✅ Secure collected data

**DON'T:**
- ❌ Stalk or harass
- ❌ Violate Terms of Service
- ❌ Access without permission
- ❌ Share sensitive data
- ❌ Use for illegal purposes

### 2. OPSEC (Operational Security)

**Protect Yourself:**
```
✅ Use VPN
✅ Rotate user agents
✅ Use separate VM/container
✅ Clear browser data
✅ Monitor your footprint
```

**Configure VPN (optional):**
```bash
# Edit .env
HTTP_PROXY=http://your-proxy:port
HTTPS_PROXY=https://your-proxy:port
SOCKS_PROXY=socks5://your-socks:port
```

### 3. Data Management

**Organize Your Work:**
```
owl-osint/
├── output/
│   ├── reports/
│   │   ├── case-001/
│   │   ├── case-002/
│   │   └── case-003/
│   └── data/
│       ├── case-001.json
│       └── case-002.json
```

**Backup Important Data:**
```bash
# Backup database
cp osint_data.db backups/osint_data_20240128.db

# Backup reports
tar -czf reports_backup_20240128.tar.gz output/reports/
```

### 4. Performance Optimization

**For Large Searches:**
```python
# Adjust concurrent requests in config.py
MAX_CONCURRENT_REQUESTS = 20  # Default: 10

# Increase timeout for slow platforms
REQUEST_TIMEOUT = 60  # Default: 30
```

**For Bulk Operations:**
```bash
# Run in background
nohup python batch_search.py &

# Monitor progress
tail -f owl_osint.log
```

---

## 💡 Tips & Tricks

### Tip 1: Quick Username Variations

Try common variations:
```
john_doe
johndoe
john.doe
johndoe123
john-doe
jdoe
```

### Tip 2: Combine Modules

```
1. Username search → Find email in bio
2. Email OSINT → Check breaches
3. Phone OSINT → Verify carrier
4. Social Stalker → Deep profile analysis
5. Generate comprehensive report
```

### Tip 3: Save Time with Aliases

Add to `.bashrc` or `.zshrc`:
```bash
alias owl='cd ~/owl-osint && source venv/bin/activate && python main.py'
alias owl-username='cd ~/owl-osint && source venv/bin/activate && python -c "from modules.username_hunter import UsernameHunter; import asyncio; hunter = UsernameHunter(); username = input(\"Username: \"); asyncio.run(hunter.search_username(username))"'
```

### Tip 4: Batch Processing

Create script `batch_search.py`:
```python
#!/usr/bin/env python3
import asyncio
from modules.username_hunter import UsernameHunter

async def batch_search(usernames):
    hunter = UsernameHunter()
    for username in usernames:
        print(f"\nSearching: {username}")
        await hunter.search_username(username)

if __name__ == "__main__":
    usernames = [
        "user1",
        "user2", 
        "user3"
    ]
    asyncio.run(batch_search(usernames))
```

Run:
```bash
python batch_search.py
```

### Tip 5: Custom Platform Lists

Edit `data/platforms.json` to add custom platforms:
```json
{
  "custom_forum": {
    "url": "https://custom-forum.com/users/{}",
    "name": "Custom Forum"
  }
}
```

### Tip 6: Keyboard Shortcuts

While in CLI:
- `Ctrl+C` - Cancel operation
- `Ctrl+D` - Exit program
- `Ctrl+Z` - Suspend (resume with `fg`)
- `Up/Down Arrow` - Command history

### Tip 7: Log Analysis

```bash
# View real-time logs
tail -f owl_osint.log

# Search errors
grep ERROR owl_osint.log

# Filter by module
grep "username_hunter" owl_osint.log
```

---

## ❓ FAQ

### Q: How long does a username search take?
**A:** 30 seconds to 3 minutes, depending on:
- Number of platforms (350+)
- Network speed
- Platform response times

### Q: Can I search multiple usernames at once?
**A:** Not in CLI, but you can use batch scripts (see Tips & Tricks).

### Q: Are the reports shareable?
**A:** Yes! HTML and PDF reports are standalone files that can be shared.

### Q: How accurate is the confidence scoring?
**A:** 80-90% accurate based on testing. Always verify critical findings manually.

### Q: Can I add my own platforms?
**A:** Yes! Edit `data/platforms.json` and add custom entries.

### Q: Is my data stored securely?
**A:** Data is stored locally in SQLite. For production use, implement encryption (see [Security Guide](SECURITY.md)).

---

## 🆘 Need Help?

- **Documentation**: Check other docs in `/docs/`
- **Issues**: [GitHub Issues](https://github.com/yourusername/owl-osint/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/owl-osint/discussions)
- **Discord**: [Join server](#)
- **Email**: support@example.com

---

<div align="center">

**[⬆ Back to Top](#-user-guide---owl-osint-suite-v20)**

Made with ❤️ by the OSINT community

</div>
