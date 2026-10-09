# SQL Database Filtering for Security & Asset Management

## Scenario Overview

As a security analyst, retrieving targeted asset and personnel data from relational databases is essential for incident response, vulnerability management, and organizational compliance.

In this project, I queried an organizational **MariaDB** database to:

1. Audit full device inventory.
2. Isolate devices requiring OS updates (`OS 2`).
3. Extract employee data for departmental policy notices.
4. Locate compromised hardware across building locations during an incident investigation.

---

## Environment & Tools

- **Database:** MariaDB / MySQL
- **Language:** SQL
- **Key Commands:** `SELECT`, `FROM`, `WHERE`, `LIKE`, `DESCRIBE`

---

## Tasks & Query Executions

### Task 1: Complete Asset Inventory

```sql
SELECT device_id, operating_system
FROM machines;
```
