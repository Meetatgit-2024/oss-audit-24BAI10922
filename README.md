# Open Source Software Audit – Capstone Project

---

##  Student Details

| Field                   | Value                       |
| ----------------------- | --------------------------- |
| **Name**                | Meet Chaure                 |
| **Registration Number** | 24BAI10922                  |
| **Course**              | Open Source Software (NGMC) |
| **Date**                | March 2026                  |

---

##  Chosen Software

**Python – Open source, high-level programming language**

Python is widely used for web development, data science, automation, and artificial intelligence. It is known for its simplicity, readability, and strong community support.

---

##  Scripts Overview

| File                           | Purpose                                                           |
| ------------------------------ | ----------------------------------------------------------------- |
| `script1_system_identity.sh`   | System Identity Report (displays OS, user, kernel, uptime)        |
| `script2_package_inspector.sh` | FOSS Package Inspector (checks if Python is installed)            |
| `script3_disk_auditor.sh`      | Disk and Permission Auditor (analyzes directories)                |
| `script4_log_analyzer.sh`      | Log File Analyzer (counts keyword occurrences in logs)            |
| `script5_manifesto.sh`         | Open Source Manifesto Generator (creates a custom manifesto file) |

---

## ⚙️ How to Run

###  Step 1: Make Scripts Executable

```bash
chmod +x script1_system_identity.sh script2_package_inspector.sh script3_disk_auditor.sh script4_log_analyzer.sh script5_manifesto.sh
```

---

###  Step 2: Run Scripts

#### ▶ System Identity Report

```bash
./script1_system_identity.sh
```

#### ▶ Package Inspector

```bash
./script2_package_inspector.sh
```

#### ▶ Disk and Permission Auditor

```bash
./script3_disk_auditor.sh
```

#### ▶ Log Analyzer (example)

```bash
./script4_log_analyzer.sh /var/log/syslog error
```

#### ▶ Manifesto Generator

```bash
./script5_manifesto.sh
```

---

##  Features

* Demonstrates core Linux shell scripting concepts:

  * Variables and command substitution
  * Conditional statements (`if-else`)
  * Loops (`for`, `while`)
  * Case statements
  * File handling and user input

* Real-world applications:

  * System monitoring
  * Package inspection
  * Log analysis
  * Automation

---

##  Requirements

* Linux-based operating system (Ubuntu recommended)
* Bash shell
* Python3 installed (for validation in Script 2)

---

