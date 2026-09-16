# 🛡️ Cybersecurity & Networking Engineering Portfolio

Welcome! This repository documents my hands-on labs, network architecture designs, and protocol analysis projects built while preparing for professional cybersecurity certifications and engineering roles.

---

## 👤 About Me

- **Target Roles:** Security Operations Center (SOC) Analyst / Junior Network Security Engineer
- **Core Competencies:** Network Architecture (TCP/IP), Packet Analysis (Wireshark), Defense-in-Depth (DMZs, Firewalls, VLANs), Public Key Infrastructure (PKI).

---

## 🛠️ Hands-On Projects & Labs

### 1. Network Architecture & Perimeter Defense

- 📐 **[Bank Branch Network Topology](./01-network-architecture/bank-branch-topology/)**
  - Built a multi-VLAN corporate network in Cisco Packet Tracer featuring a screened-subnet DMZ.
  - Enforced ACL firewall policies preventing public web servers from pivoting into internal database zones.

### 2. Protocol Analysis & Threat Vectors

- 🔍 **[TCP 3-Way Handshake & SYN Flood Analysis](./02-protocol-analysis/wireshark-tcp-handshake/)**
  - Captured and analyzed TCP connection handshakes (`SYN` → `SYN-ACK` → `ACK`) in Wireshark.
  - Documented how protocol-level state exhaustion attacks (SYN floods, ICMP floods) bypass basic filtering.

### 3. Public Key Infrastructure (PKI) & TLS

- 🔐 **[Enterprise PKI & Nginx TLS Implementation](./03-pki-home-lab/)**
  - Constructed a 4-phase local Certificate Authority (CA) using OpenSSL.
  - Issued and installed custom X.509 digital certificates to secure Nginx web servers over HTTPS (Port 443).

---

## 📜 Key Technical Skills & Tools

| Category                    | Tools & Protocols                                                  |
| :-------------------------- | :----------------------------------------------------------------- |
| **Networking**              | Cisco Packet Tracer, Switches, Routers, VLANs, Subnetting, NAT     |
| **Protocols**               | TCP/IP, UDP, ARP, DHCP, DNS, SSH (Port 22), HTTPS (Port 443), SMTP |
| **Defensive Controls**      | DMZ Isolation, Stateful/NGFW Firewalls, Proxies, WAF               |
| **Security & Cryptography** | OpenSSL, PKI, X.509 Certificates, TLS/SSL, AES Encryption          |
| **Analysis**                | Wireshark, Packet Captures (`.pcap`), Terminal & Bash              |

---

## 📁 Repository Quick Links

- 📂 [View Network Architecture Labs](./01-network-architecture/)
- 📂 [View Protocol Analysis Labs](./02-protocol-analysis/)
- 📂 [View PKI Home Lab Project](./03-pki-home-lab/)
