# 🚀 Scalable Data Pipeline using dbt + Snowflake + S3

This project showcases a **production-grade cloud data pipeline** that ingests, transforms, and analyzes over **20 million records** using modern data engineering tools.

---

## 📊 Architecture Overview

![Architecture Diagram](/123.drawio.png)

---

## 🔧 Project Description

The pipeline follows the ELT paradigm:

- **Extract & Load**:
  - Load raw Netflix dataset (20M+ records) into **Amazon S3**
  - Ingest S3 data into **Snowflake** data warehouse (raw layer)

- **Transform**:
  - Use **dbt (Data Build Tool)** to create structured models:
    - Layered modeling: `raw → staging → development`
    - Incremental materializations
    - Seeds for static data
    - Modular, version-controlled SQL logic

- **Test & Document**:
  - Built-in **schema tests**: `not_null`, `unique`, `relationships`
  - Auto-generated dbt **documentation & lineage graphs**

- **Visualize**:
  - Connect Snowflake models to **Power BI / Looker Studio / Tableau** for dashboards

---

## 📁 Project Structure

```bash
netflix-DBT-Snowflake/
├── models/
│   ├── raw/              # Source models from Snowflake tables
│   ├── staging/          # Cleaned models with standardized formats
│   └── development/      # Final models with business logic
├── seeds/                # Static lookup CSVs
├── tests/                # Custom dbt tests
├── macros/               # Reusable SQL + Jinja logic
├── dbt_project.yml       # DBT project config
├── packages.yml          # DBT dependency packages
└── README.md             # Project documentation
