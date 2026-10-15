# 🛡️ Module 06: Threat Detection & Incident Response (DIR)

Welcome to the **Threat Detection & Incident Response (DIR)** module of my cybersecurity portfolio. This repository showcases hands-on projects, labs and simulations focused on identifying malicious activity, engineering custom detection rules, analyzing telemetry and executing structured incident response lifecycles.

---

## 🎯 Module Objective

The primary objective of this module is to demonstrate practical proficiency in Security Operations Center (SOC) workflows, bridging the gap between passive log collection and active threat mitigation. This includes:
* **Detection Engineering:** Writing, testing, and tuning high-fidelity detection rules.
* **Log Analysis & SIEM:** Triage and correlation of multi-source telemetry (Windows Event Logs, Sysmon, Linux audit logs, network traffic).
* **Incident Response (IR):** Executing systematic response phases from containment to eradication and post-incident reporting.
* **Threat Intelligence Mapping:** Aligning observed adversary behaviors with the **MITRE ATT&CK Framework**.

---

## 🛠️ Tech Stack & Security Tools

* **SIEM & Log Management:** Splunk, ELK Stack (Elasticsearch, Logstash, Kibana), Wazuh
* **Endpoint & Network Monitoring:** Sysmon, Suricata / Snort (IDS/IPS), Wireshark, tcpdump
* **EDR & OS Security:** Microsoft Defender / Defender XDR, CrowdStrike Falcon (or open-source equivalents)
* **Frameworks:** NIST SP 800-61 (Incident Handling), MITRE ATT&CK
* **Automation & Scripting:** Python, Bash

---

## 📂 Repository Structure

```text
06-detection-incident-response/
│
├── 01-siem-log-analysis/          # Log collection, parsing, and query correlation
├── 02-detection-engineering/      # Custom sigma/snort rules and alert tuning
├── 03-incident-response-labs/     # End-to-end incident investigations & playbooks
├── 04-threat-hunting/             # Proactive hypothesis-driven hunting exercises
├── assets/                        # Architecture diagrams, screenshots, and evidence
└── README.md                      # Module overview and documentation