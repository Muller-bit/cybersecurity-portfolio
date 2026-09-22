# 🛡️ SQL Log Analysis & System Patch Auditing

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=sqlite)
![Database](https://img.shields.io/badge/Database-MariaDB%2FMySQL-003545?style=for-the-badge&logo=mariadb)
![Domain](https://img.shields.io/badge/Domain-Cybersecurity%20%26%20Log%20Analysis-red?style=for-the-badge)

---

## 📌 Project Overview

This project focuses on applying **SQL queries for security auditing, vulnerability assessment, and incident investigation**. Working within a enterprise database environment (`organization`), I conducted data analyses to:

1. **Audit Endpoint Compliance:** Identify outdated employee devices running vulnerable software versions to assist patch management efforts.
2. **Detect Authentication Anomalies:** Inspect user login logs for anomalous geographic locations and off-hours access indicative of credential compromise.
3. **Construct Forensic Timelines:** Leverage multi-column sorting techniques to establish chronological timelines of security events.

---

## 🗄️ Database Schema & Architecture

The investigation primary utilized two core tables within the `organization` database:

```
┌──────────────────────────────────────────────────┐
│                   ORGANIZATION                   │
└──────────────┬────────────────────┬──────────────┘
               │                    │
               ▼                    ▼
   ┌───────────────────────┐   ┌───────────────────────┐
   │       machines        │   │    log_in_attempts    │
   ├───────────────────────┤   ├───────────────────────┤
   │ device_id (PK)        │   │ event_id (PK)         │
   │ operating_system      │   │ username              │
   │ email_client          │   │ login_date            │
   │ OS_patch_date         │   │ login_time            │
   │ employee_id           │   │ country               │
   │                       │   │ ip_address            │
   │                       │   │ success               │
   └───────────────────────┘   └───────────────────────┘
```

---

## 🛠️ Security Analysis Tasks & Execution

### Task 1: Endpoint Security & Patch Management Audit

> **Objective:** Identify unpatched endpoints in the fleet to minimize exposure to known exploits.

#### Step 1.1 — Full Hardware Inventory Inspection

Retrieved the full asset inventory from the `machines` table to establish baseline visibility across all corporate hardware assets:

```sql
SELECT *
FROM machines;
```

#### Step 1.2 — Email Client Software Auditing

Isolated specific software configurations to evaluate client-side application exposure across active endpoints:

```sql
SELECT device_id, email_client
FROM machines;
```

- **Finding:** Identified `Email Client 2` as the software active on the third record entry.

#### Step 1.3 — OS Patch Date Isolation

Queried device identifiers alongside operating system details and patch timestamps to locate vulnerable, outdated machines:

```sql
SELECT device_id, operating_system, OS_patch_date
FROM machines;
```

- **Finding:** Identified systems running patch dates as old as `2021-09-01`.

> 💡 **Security Takeaway:** Unpatched operating systems represent critical attack vectors. Filtering endpoints by `OS_patch_date` enables vulnerability management teams to prioritize high-risk systems for patch deployment.

---

### Task 2: Authentication Log & Threat Investigation

> **Objective:** Analyze user activity logs to pinpoint potential unauthorized access, credential theft, or insider threats.

#### Step 2.1 — Geographic Anomaly Detection

Audited authentication event locations against expected regional baselines (USA, Canada, Mexico):

```sql
SELECT event_id, country
FROM log_in_attempts;
```

- **Finding:** Confirmed login attempts originating from **Australia**, representing a foreign IP/location anomaly requiring immediate isolation.

#### Step 2.2 — Off-Hours Login Analysis

Extracted authentication timestamps alongside user credentials to inspect off-hours account access:

```sql
SELECT username, login_date, login_time
FROM log_in_attempts;
```

- **Finding:** Pinpointed account access patterns across targeted accounts, including target user `apatel`.

#### Step 2.3 — Full Event Log Extraction

Retrieved complete event logs to gather full forensic metadata (including source IP addresses and authentication success/failure flags):

```sql
SELECT *
FROM log_in_attempts;
```

> ⚠️ **Security Takeaway:** Threat actors frequently use compromised credentials during off-peak hours (e.g., 3:00 AM) to avoid detection. Spotting foreign logins and off-hours activity is essential for detecting Account Takeovers (ATO).

---

### Task 3: Incident Timeline Construction (Multi-Column Sorting)

> **Objective:** Transform unsorted event logs into structured, chronological timelines for forensic investigation.

#### Step 3.1 — Single-Column Date Ordering

Sorted log entries sequentially by date to analyze day-by-day access distribution:

```sql
SELECT *
FROM log_in_attempts
ORDER BY login_date;
```

- **Finding:** Determined the earliest recorded log date as `2022-05-08` (User: `daquino`).

#### Step 3.2 — Multi-Column Chronological Alignment

Applied secondary sorting on `login_time` to establish precise down-to-the-second chronological accuracy:

```sql
SELECT *
FROM log_in_attempts
ORDER BY login_date, login_time;
```

- **Finding:** Resolved time collisions to identify the true initial login event at `00:15:55` by user `wjaffrey`.

---

## 📈 Key Findings & Security Summary

| Category               | Finding                                               | Recommended Action                          |
| :--------------------- | :---------------------------------------------------- | :------------------------------------------ |
| **Patch Management**   | Endpoints operating on legacy patches (`2021-09-01`). | Enforce automated OS patching policies.     |
| **Geographic Anomaly** | Unexpected logins detected from **Australia**.        | Block foreign IP ranges & enforce MFA.      |
| **Off-Hours Access**   | High volume of midnight login attempts.               | Configure SIEM alerts for off-hours access. |

---

## ⚙️ How to Reproduce

1. **Connect to MariaDB / MySQL:**
   ```bash
   sudo mysql organization
   ```
2. **Execute Audit Script:**
   Copy and execute the queries above sequentially within the MariaDB CLI prompt to replicate the analysis findings.

---

_Created as part of a Cybersecurity & Database Security Portfolio._
