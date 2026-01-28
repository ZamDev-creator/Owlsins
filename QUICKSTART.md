# ⚡ Quick Start Guide - OWL OSINT Suite

Get up and running in 5 minutes!

---

## 🚀 Super Fast Setup

### Linux/macOS (One Command)

```bash
curl -sSL https://raw.githubusercontent.com/yourusername/owl-osint/main/install.sh | bash && cd owl-osint && source venv/bin/activate && python main.py
```

### Windows (PowerShell)

```powershell
# Download and extract release
# Then:
cd owl-osint
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python main.py
```

---

## 📝 5-Minute Tutorial

### 1. First Search - Username Hunter (2 min)

```
1. Launch: python main.py
2. Select: [1] Username Hunter
3. Enter: john_doe
4. Wait 30 seconds...
5. View results!
```

**What You'll See:**
- Found on 15+ platforms
- Intelligence report
- Confidence score
- Correlations

### 2. Email Investigation (1 min)

```
1. Select: [2] Email OSINT
2. Enter: john@example.com
3. View analysis!
```

**Results Include:**
- Email validation
- Breach status
- Domain info

### 3. Phone Lookup (1 min)

```
1. Select: [5] Phone OSINT
2. Enter: +628123456789
3. View intelligence!
```

**Results Include:**
- Carrier info
- Location/timezone
- Social media presence

### 4. Generate Report (1 min)

```
1. After any search
2. Choose: Generate HTML report? [Y]
3. Report saved!
4. Open in browser
```

**Done! You're now an OWL OSINT user! 🎉**

---

## 🎯 Common Use Cases

### Case 1: Investigate Username

**Goal:** Find all accounts for username "suspect123"

```
Steps:
1. Username Hunter → suspect123
2. Review platforms found
3. Check intelligence report
4. Note detected social accounts
5. Follow up on email/phone if found
6. Generate comprehensive report
```

### Case 2: Track Phone Number

**Goal:** Identify owner of +62812xxxxxxx

```
Steps:
1. Phone OSINT → +62812xxxxxxx
2. View carrier & location
3. Check social media presence
4. Note WhatsApp/Telegram status
5. Cross-reference with username search
6. Document findings
```

### Case 3: Email Investigation

**Goal:** Check if email compromised

```
Steps:
1. Email OSINT → target@example.com
2. Check validation status
3. Review breach information
4. Note any warnings
5. Recommend password change if breached
```

---

## 💡 Pro Tips

### Tip 1: Combine Modules
```
Username → Find email in bio
→ Email OSINT → Check breaches
→ Generate combined report
```

### Tip 2: Use Correlations
```
Same avatar across platforms?
→ Strong confidence same person!

Consistent location data?
→ Reliable geographic info!
```

### Tip 3: Verify Critical Info
```
High confidence (85%+) = Likely accurate
Medium confidence (50-70%) = Verify manually
Low confidence (<50%) = Multiple people possible
```

---

## ⚙️ Essential Configuration

### Add API Keys (Optional)

Edit `.env`:
```bash
# For breach checking
HIBP_API_KEY=your_key_here

# For threat intelligence  
VIRUSTOTAL_API_KEY=your_key_here
```

### Use VPN (Recommended)

Edit `.env`:
```bash
HTTP_PROXY=http://your-proxy:port
HTTPS_PROXY=https://your-proxy:port
```

---

## 📚 Next Steps

**Learn More:**
1. [User Guide](USER_GUIDE.md) - Complete documentation
2. [FAQ](FAQ.md) - Common questions
3. [Examples](examples/) - Real scenarios

**Advanced:**
1. [API Reference](API_REFERENCE.md) - For scripting
2. [Developer Guide](DEVELOPER_GUIDE.md) - For contributors
3. [Architecture](ARCHITECTURE.md) - System design

---

## 🆘 Quick Troubleshooting

**Import Error?**
```bash
pip install -r requirements.txt
```

**Permission Error?**
```bash
source venv/bin/activate
# Then retry
```

**PDF Error?**
```bash
# Linux
sudo apt-get install libpango-1.0-0
# macOS
brew install pango
```

---

## ❓ Need Help?

- **Docs**: Check [README.md](README.md)
- **FAQ**: See [FAQ.md](FAQ.md)
- **Issues**: [GitHub Issues](https://github.com/yourusername/owl-osint/issues)
- **Discord**: [Join server](#)

---

<div align="center">

**🦉 Happy Hunting!**

[⬆ Back to Top](#-quick-start-guide---owl-osint-suite)

</div>
