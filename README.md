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
  - Connect Snowflake models to **Power BI / Looker Studio / Tableau** for dashboards.

---

## 📁 Project Structure

```bash
├── analyses/ # Ad-hoc analysis files
│ └── movie_analysis.sql
├── macros/ # Reusable macros
├── models/ # DBT models
│ ├── dim/ # Dimension tables
│ │ ├── dim_genome_tags.sql
│ │ ├── dim_movies_tags.sql
│ │ ├── dim_movies.sql
│ │ └── dim_users.sql
│ ├── fct/ # Fact tables
│ │ ├── fct_genome_scores.sql
│ │ └── fct_ratings.sql
│ └── mart/ # Final business-ready layer
|   └── mart_movie_release.sql
├── seeds/ # Seed data
│ └── seed_movie_release_date.csv
├── snapshots/ # Snapshots for SCDs
|   └── snap_tags.sql 
├── staging/ # Raw layer staging
│ ├── schema.yml
│ └── sources.yml
├── target/ # DBT build artifacts (auto-generated)
├── tests/ # Custom DBT tests
├── dbt_project.yml # DBT project configuration
├── package-lock.yml # Package lock
├── packages.yml # DBT package dependencies
└── README.md # Project documentation
