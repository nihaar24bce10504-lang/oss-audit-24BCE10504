# oss-audit-24BCE10504

# Open Source Audit Project – Git

## Student Details
- Name: Nihaar Gupta
- Registration Number: 24BCE10504
- Course: Open Source Software

## Chosen Software
Git – Distributed Version Control System

## About the Project
This project is an audit of the open-source software Git, covering its origin, license, Linux footprint, ecosystem, and comparison with proprietary tools.

---

## Scripts Overview

### 1. System Identity Report
Displays system info like kernel, user, uptime, etc.

### 2. FOSS Package Inspector
Checks if Git is installed and shows version details.

### 3. Disk and Permission Auditor
Shows size and permissions of key directories.

### 4. Log File Analyzer
Analyzes log files and counts keyword occurrences.

### 5. Open Source Manifesto Generator
Generates a personalized open-source philosophy statement.

---

## How to Run

```bash
chmod +x scripts/*.sh

./scripts/script1_system_info.sh
./scripts/script2_package_inspector.sh
./scripts/script3_disk_auditor.sh
./scripts/script4_log_analyzer.sh <file> <keyword>
./scripts/script5_manifesto.sh