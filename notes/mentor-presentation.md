# Mentor Presentation Notes

## Project Goal

The objective of this project was to build a lightweight serverless analytics workflow on AWS capable of transforming structured data files into interactive dashboards using managed cloud services.

## Main AWS Services Used

- Amazon S3
- AWS Glue Crawler
- AWS Glue Data Catalog
- Amazon Athena
- Amazon QuickSight
- AWS IAM
- Amazon CloudWatch

## Architecture Thinking

The project was designed with a serverless-first approach to minimize operational overhead and simplify scalability.

Key design decisions:

- S3 used as low-cost data lake storage
- Glue Crawler used for automated schema discovery
- Athena used for serverless SQL analytics
- QuickSight used as BI visualization layer
- IAM used for access control and least privilege

## Key Learning Areas

- data lake fundamentals
- schema inference and metadata management
- serverless analytics
- Athena query optimization awareness
- QuickSight dashboard creation
- cost optimization practices
- analytics architecture design

## What This Project Demonstrates

This project demonstrates:

- practical AWS analytics knowledge
- ability to design cloud-native analytics workflows
- serverless architecture mindset
- business intelligence integration
- understanding of data engineering concepts
- production-oriented documentation discipline

## Future Improvements

- partitioned datasets
- Parquet optimization
- Glue ETL jobs
- Athena views
- QuickSight KPI dashboards
- Infrastructure as Code
- CI/CD integration
