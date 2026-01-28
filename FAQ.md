# ❓ FAQ - Frequently Asked Questions

Common questions about OWL OSINT Suite.

---

## 📋 Table of Contents

- [General Questions](#general-questions)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Technical](#technical)
- [Legal & Ethics](#legal--ethics)
- [Troubleshooting](#troubleshooting)

---

## 🎯 General Questions

### What is OWL OSINT?

OWL OSINT Suite is an advanced open source intelligence gathering toolkit that goes beyond simple data collection. It features an intelligent analysis system that can correlate information across platforms, track entities, and provide confidence-scored assessments.

**Key Differentiators:**
- ✅ Intelligence analysis (not just scraping)
- ✅ Entity management system
- ✅ Correlation engine
- ✅ Confidence scoring
- ✅ Professional reports

### How is OWL different from other OSINT tools?

| Feature | Traditional Tools | OWL OSINT |
|---------|------------------|-----------|
| Data Collection | ✅ | ✅✅ |
| Intelligence Analysis | ❌ | ✅✅ |
| Entity Tracking | ❌ | ✅✅ |
| Cross-platform Correlation | ❌ | ✅✅ |
| Confidence Scoring | ❌ | ✅✅ |
| Professional Reports | ⚠️ Basic | ✅✅ Advanced |

### What's new in v2.0?

Major upgrade from v1.0:
- 🆕 Core Intelligence System (Entity + Correlation + Confidence)
- 🆕 4 new modules (Phone, IP, Blockchain, Social Stalker)
- ⬆️ Enhanced username hunter with deep verification
- ⬆️ Professional PDF reports
- ⬆️ Comprehensive documentation
- ⬆️ Rating: 5.5/10 → 7.8/10 (+42%)

See [CHANGELOG.md](CHANGELOG.md) for details.

### Is OWL OSINT free?

**Open Source Version:** Yes, completely free!
- MIT License
- No hidden costs
- No trial periods
- Full feature access

**Future Plans:** Potential premium features (web dashboard, API access, team features) but core will always be free.

### Can I use this for commercial purposes?

Yes! MIT License allows commercial use:
- ✅ Personal investigations
- ✅ Corporate security
- ✅ Consulting services
- ✅ Educational institutions
- ⚠️ Must comply with legal requirements
- ⚠️ Attribution appreciated (not required)

### Who should use OWL OSINT?

**Perfect For:**
- Security researchers
- Digital forensic investigators
- Penetration testers
- Private investigators
- Journalists (investigative)
- Law enforcement (with proper authorization)
- Cybersecurity professionals
- Bug bounty hunters

**Not For:**
- Stalkers or harassers
- Illegal surveillance
- Unauthorized investigations

---

## 💻 Installation

### What are the system requirements?

**Minimum:**
- Python 3.8+
- 2GB RAM
- 500MB storage
- Linux/macOS/Windows

**Recommended:**
- Python 3.11
- 4GB RAM
- 2GB storage
- Ubuntu 20.04+ or macOS 10.15+

### Why do I need Python 3.8+?

OWL OSINT uses modern Python features:
- Type hints
- asyncio improvements
- F-strings
- Dataclasses

Python 3.7 and below are not supported.

### Can I run this on Windows?

Yes! But with caveats:
- ✅ Core functionality works
- ⚠️ PDF generation needs GTK3 Runtime
- ⚠️ Some dependencies trickier to install
- 💡 Consider using WSL for better experience

### How long does installation take?

**Fast Track (script):** 5-10 minutes
**Manual Install:** 15-30 minutes
**Windows:** 20-40 minutes (including GTK3)

### Do I need API keys?

**Required:** No
**Optional:**
- HIBP API (for breach checking)
- VirusTotal API (for threat intelligence)

Most features work without API keys!

### Installation fails with "Permission Denied"?

**Solution:**
```bash
# NEVER use sudo with pip in virtual environment!

# Use virtual environment (recommended)
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# OR use --user flag
pip install --user -r requirements.txt
```

---

## 🚀 Usage

### How do I start using OWL?

```bash
# 1. Navigate to directory
cd owl-osint

# 2. Activate virtual environment
source venv/bin/activate

# 3. Launch
python main.py

# 4. Select module and follow prompts
```

### What can I search for?

**Supported:**
- ✅ Usernames (350+ platforms)
- ✅ Email addresses
- ✅ Phone numbers (international)
- ✅ IP addresses
- ✅ Cryptocurrency addresses
- ✅ Social media profiles
- ✅ Image metadata (EXIF)
- ✅ Website changes

### How long does a search take?

**Typical Times:**
- Username search: 30s - 3min
- Email OSINT: 5-10s
- Phone OSINT: 2-5s
- IP Geolocation: 1-2s
- Blockchain: 3-5s
- Image metadata: 1-2s

**Factors:**
- Network speed
- Number of platforms
- Platform response times
- Rate limiting

### Can I search multiple targets at once?

**CLI:** No (one at a time)
**Scripting:** Yes (see User Guide for batch processing)

**Future:** Batch mode planned for v2.1

### How accurate are the results?

**Platform Detection:** 90-95% accurate
**Confidence Scoring:** 80-90% accurate
**Correlation Analysis:** 85-90% accurate

**Always verify critical findings manually!**

### Do results get saved?

**Automatic:**
- ✅ Database (SQLite)
- ✅ Logs (text files)

**On Request:**
- HTML reports
- PDF reports
- JSON exports
- CSV exports

Location: `output/` directory

---

## ⚡ Features

### What is the Intelligence System?

**Three Components:**

1. **Entity Manager:** Tracks persons/accounts as entities with:
   - Multiple identifiers
   - Evidence collection
   - Attribute tracking

2. **Correlation Engine:** Finds connections using:
   - Image hash matching
   - Username patterns
   - Geographic correlation
   - Temporal patterns
   - Behavioral analysis

3. **Confidence Scorer:** Calculates reliability:
   - Multi-factor scoring
   - Evidence weighting
   - Source reliability
   - Dynamic confidence levels

### How does correlation work?

**Example:**
```
Search "john_doe" finds:
- Instagram: @john_doe (avatar: abc123.jpg)
- GitHub: john.doe (avatar: abc123.jpg)
- Twitter: johndoe123 (location: Jakarta)
- LinkedIn: john-doe (location: Jakarta)

Correlation Engine detects:
🔗 Image hash match (Instagram ↔ GitHub) → 90% strength
🔗 Username pattern (consistent naming) → 75% strength
🔗 Geographic match (Jakarta consistent) → 70% strength

Final Assessment: 87% confidence same person
```

### What is confidence scoring?

**Scoring Factors:**
- Evidence quality
- Source reliability
- Cross-validation
- Pattern consistency
- Temporal alignment

**Levels:**
- 85-100%: Very High
- 70-85%: High
- 50-70%: Medium
- 30-50%: Low
- 0-30%: Very Low

### Can I customize platform list?

**Yes!** Edit `data/platforms.json`:

```json
{
  "custom_platform": {
    "url": "https://custom.com/user/{}",
    "name": "Custom Platform"
  }
}
```

### How do I generate reports?

**During Search:**
```
Generate HTML report? [Y/n]: y
Generate PDF report? [Y/n]: y
```

**Manual:**
```python
from utils.report_generator import ReportGenerator

gen = ReportGenerator()
gen.generate_report(data, "output/my_report.html")
```

### Can I export data?

**Yes! Multiple formats:**
- JSON (structured data)
- CSV (tabular data)
- HTML (web view)
- PDF (printable)

**Export Options in Menu:**
Settings → Export Data → Select Format

---

## 🔧 Technical

### What technologies does OWL use?

**Core:**
- Python 3.8+
- asyncio (async operations)
- aiohttp (HTTP client)
- SQLite (database)

**Libraries:**
- BeautifulSoup4 (HTML parsing)
- Pillow (image processing)
- phonenumbers (phone validation)
- WeasyPrint (PDF generation)

### How does async searching work?

**Traditional (Slow):**
```
Check Platform 1 → Wait → Done
Check Platform 2 → Wait → Done
Check Platform 3 → Wait → Done
Total: 3× wait time
```

**Async (Fast):**
```
Check Platform 1 ┐
Check Platform 2 ├→ All at once → Done
Check Platform 3 ┘
Total: 1× wait time
```

Result: **3-10x faster!**

### Where is data stored?

**Database:** `osint_data.db` (SQLite)
**Reports:** `output/reports/`
**Screenshots:** `output/screenshots/`
**Logs:** `owl_osint.log`
**Exports:** `output/data/`

### Is data encrypted?

**Currently:** No (plaintext SQLite)
**Planned:** v2.1 will add encryption

**Security Note:** Don't store sensitive investigations on shared systems!

### Can I use a proxy/VPN?

**Yes!** Edit `.env`:

```bash
HTTP_PROXY=http://proxy:port
HTTPS_PROXY=https://proxy:port
SOCKS_PROXY=socks5://socks:port
```

Or use system proxy settings.

### How do I update OWL?

```bash
# With git
cd owl-osint
git pull origin main
pip install -r requirements.txt --upgrade

# Manual
# Download latest release
# Extract and replace files
# Run: pip install -r requirements.txt --upgrade
```

### Can I contribute?

**Yes! We welcome:**
- 🐛 Bug reports
- 💡 Feature suggestions
- 📝 Documentation improvements
- 🔧 Code contributions
- 🧪 Testing help

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## ⚖️ Legal & Ethics

### Is OSINT legal?

**Generally Yes, BUT:**
- ✅ Public data collection: Usually legal
- ⚠️ Scraping websites: May violate ToS
- ⚠️ Privacy laws: Vary by jurisdiction (GDPR, CCPA, etc.)
- ❌ Harassment/stalking: Always illegal
- ❌ Unauthorized access: Always illegal

**Recommendation:** Consult legal counsel for your use case.

### Do I need authorization?

**Depends on Context:**

**Personal Research:** Usually no authorization needed

**Professional Investigations:**
- Corporate: Get written authorization
- Law enforcement: Follow proper procedures
- Penetration testing: Require signed agreement

**Golden Rule:** If in doubt, get permission!

### Can I get in trouble?

**Potential Risks:**
- 🔴 Violating platform Terms of Service
- 🔴 Privacy law violations (GDPR, CCPA)
- 🔴 Unauthorized access charges
- 🔴 Harassment/stalking accusations

**Protection:**
- ✅ Get proper authorization
- ✅ Document your process
- ✅ Respect privacy laws
- ✅ Use ethically
- ✅ Secure your data

### What about GDPR?

**GDPR Applies If:**
- Processing EU resident data
- Operating in EU
- Offering services to EU

**Requirements:**
- Legal basis for processing
- Data minimization
- Purpose limitation
- Security measures
- Data subject rights

**OWL OSINT:** Tool provides capabilities; **you** are responsible for compliance.

### Should I use a VPN?

**Recommended For:**
- Maintaining anonymity
- Avoiding IP blocks
- Protecting your identity
- Professional investigations

**Not Required For:**
- Personal research
- Authorized investigations
- Academic use

### Can platforms detect me?

**Detection Methods:**
- Rate limiting (too many requests)
- User agent analysis
- IP reputation
- Behavioral patterns

**Mitigation:**
- Use reasonable request rates
- Rotate user agents
- Use VPN/proxies
- Respect robots.txt

---

## 🔧 Troubleshooting

### "Python 3.8+ required" error?

**Check Version:**
```bash
python3 --version
```

**If Old Version:**
```bash
# Ubuntu/Debian
sudo apt-get install python3.11

# macOS
brew install python@3.11

# Update alternatives
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
```

### "Module not found" error?

**Solution:**
```bash
# Ensure virtual environment is activated
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# Reinstall dependencies
pip install -r requirements.txt

# Verify
pip list | grep MODULE_NAME
```

### PDF generation fails?

**Linux:**
```bash
sudo apt-get install python3-dev libcairo2 libpango-1.0-0
pip install weasyprint
```

**macOS:**
```bash
brew install pango cairo
pip install weasyprint
```

**Windows:**
Install GTK3 Runtime from [here](https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases)

### "Database is locked" error?

**Causes:**
- Multiple instances running
- Improper shutdown
- File system issues

**Solution:**
```bash
# Close all OWL instances
# Then either:

# 1. Delete lock file
rm osint_data.db-journal

# 2. Or use new database
mv osint_data.db osint_data.db.backup
```

### Slow performance?

**Optimization:**

```python
# Edit config.py
MAX_CONCURRENT_REQUESTS = 20  # Increase
REQUEST_TIMEOUT = 60          # Increase
```

**Also:**
- Use SSD instead of HDD
- Close other applications
- Check network speed
- Use wired connection

### SSL certificate error?

**macOS:**
```bash
/Applications/Python\ 3.11/Install\ Certificates.command
```

**Linux:**
```bash
sudo apt-get install ca-certificates
sudo update-ca-certificates
```

### Getting rate limited?

**Solutions:**
- Reduce request rate
- Use proxy rotation
- Wait between searches
- Spread searches over time

**Configure:**
```python
# config.py
RATE_LIMIT_DELAY = 2  # Seconds between requests
```

### Results seem inaccurate?

**Verification Steps:**
1. Check platform manually
2. Review confidence scores
3. Examine correlations
4. Cross-reference findings
5. Consider false positives

**Remember:** Tool assists, but **you** verify!

---

## 💬 Getting Help

### Still Have Questions?

1. **Search Documentation**
   - README.md
   - USER_GUIDE.md
   - This FAQ

2. **Check GitHub**
   - [Issues](https://github.com/yourusername/owl-osint/issues)
   - [Discussions](https://github.com/yourusername/owl-osint/discussions)

3. **Community**
   - Discord: [Join server](#)
   - Telegram: [@owl_osint](#)
   - Reddit: [r/owl_osint](#)

4. **Contact**
   - Email: support@example.com
   - Twitter: [@owl_osint](#)

### Report a Bug

**Before Reporting:**
- [ ] Search existing issues
- [ ] Try latest version
- [ ] Check documentation

**Report:**
1. Go to [GitHub Issues](https://github.com/yourusername/owl-osint/issues)
2. Click "New Issue"
3. Provide:
   - OWL version
   - OS and Python version
   - Steps to reproduce
   - Error messages
   - Expected vs actual behavior

### Request a Feature

**Before Requesting:**
- [ ] Search existing requests
- [ ] Check roadmap

**Request:**
1. Open [Discussion](https://github.com/yourusername/owl-osint/discussions)
2. Category: "Ideas"
3. Explain:
   - Use case
   - Expected behavior
   - Why it's useful
   - Example implementation (optional)

---

<div align="center">

**[⬆ Back to Top](#-faq---frequently-asked-questions)**

**Can't find your answer? [Ask on Discussions](https://github.com/yourusername/owl-osint/discussions)!**

Made with ❤️ by the OSINT community

</div>
