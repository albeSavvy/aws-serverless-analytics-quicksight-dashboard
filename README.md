# AWS Serverless Analytics QuickSight Dashboard

## Overview

This project implements a serverless analytics workflow on AWS using Amazon S3, AWS Glue Data Catalog, Amazon Athena, and Amazon QuickSight.

The goal is to transform raw structured operational data into queryable datasets and interactive business intelligence dashboards without managing servers.

The project was designed as a hands-on AWS Data Engineering and Analytics exercise, with a focus on data lake fundamentals, schema discovery, SQL analytics, dashboarding, cost optimization, and production-oriented cloud thinking.

## Business Scenario

Operations and logistics teams often need fast visibility into performance metrics, trends, exceptions, and process bottlenecks.

This project simulates a lightweight analytics platform where structured data is uploaded to Amazon S3, processed through Lambda, cataloged through AWS Glue, queried with Athena, and visualized through QuickSight dashboards.

The solution is relevant for:

- operations performance monitoring
- logistics KPI analysis
- process improvement reporting
- business intelligence dashboards
- data-driven decision making

## Architecture

```text
Structured Data Files
        |
        v
Amazon S3
Raw Data Layer
        |
        v
AWS Lambda
Ingestion / Processing
        |
        v
Amazon S3
Processed Data Layer
        |
        v
AWS Glue Crawler
Schema Discovery
        |
        v
AWS Glue Data Catalog
Metadata Layer
        |
        v
Amazon Athena
Serverless SQL Queries
        |
        v
Amazon QuickSight
Interactive Dashboard
```

## Project Evidence

### QuickSight Dashboard

![QuickSight Dashboard](screenshots/quicksight-dashboard.png)

The dashboard visualizes logistics delay metrics, including average delay by station, total delay minutes, and delayed parcel distribution.

### S3 Data Lake Structure

![S3 Bucket Structure](screenshots/s3-bucket-structure.png)

The S3 bucket is organized into operational zones such as incoming, processed, failed, archive, and Athena query results.

### Lambda Ingestion Function

![Lambda Ingestion](screenshots/lambda-ingestion.png)

The Lambda function is connected to an S3 trigger and processes incoming logistics event files into analytics-ready data.

### Glue Data Catalog Table

![Glue Data Catalog Table](screenshots/glue-data-catalog-table.png)

AWS Glue Data Catalog stores the processed table metadata used by Athena and QuickSight.

## AWS Services Used

| Service | Purpose |
|---|---|
| Amazon S3 | Stores raw, processed, failed, archive, and Athena result data |
| AWS Lambda | Processes incoming operational data files |
| AWS Glue Crawler | Automatically discovers schema from processed S3 data |
| AWS Glue Data Catalog | Stores metadata tables used by Athena |
| Amazon Athena | Runs serverless SQL queries on S3 data |
| Amazon QuickSight | Builds interactive BI dashboards |
| AWS IAM | Manages access permissions |
| Amazon CloudWatch | Supports monitoring and troubleshooting |

## Key Features

- Serverless analytics architecture
- S3-based data lake foundation
- Event-driven ingestion with Lambda
- Automated schema discovery with Glue Crawler
- Metadata management through Glue Data Catalog
- SQL analytics with Amazon Athena
- QuickSight dashboard for business visualization
- Cost-conscious design
- Cleanup documentation to avoid unexpected costs
- Portfolio-ready AWS documentation

## Data Engineering Concepts Applied

- Raw and processed data layers
- Ingestion and transformation separation
- Metadata cataloging
- Schema discovery
- Serverless SQL analytics
- Data lake fundamentals
- Separation between storage, processing, query, and visualization layers
- Analytics serving layer
- Cost-aware querying

## Solution Architecture Concepts Applied

- Managed services selection
- Serverless-first architecture
- Decoupled analytics layers
- IAM-based access control
- Operational visibility
- Cost optimization
- Scalability by design
- Low-maintenance architecture

## Repository Structure

```text
aws-serverless-analytics-quicksight-dashboard/
│
├── README.md
├── .gitignore
├── architecture/
│   ├── README.md
│   ├── data-flow.md
│   └── design-decisions.md
├── docs/
│   ├── project-overview.md
│   ├── setup-guide.md
│   ├── athena-queries.md
│   ├── quicksight-dashboard.md
│   ├── cost-optimization.md
│   ├── security.md
│   ├── monitoring.md
│   └── cleanup.md
├── sql/
│   ├── athena_sample_queries.sql
│   └── README.md
├── data/
│   ├── README.md
│   └── sample/
│       └── README.md
├── screenshots/
│   └── README.md
└── notes/
    └── mentor-presentation.md
```

## Example Analytics Workflow

1. Upload structured logistics event data files to an S3 incoming folder.
2. Trigger Lambda ingestion from S3 object creation.
3. Validate and transform records into a processed S3 layer.
4. Run an AWS Glue Crawler to infer schema from processed data.
5. Store table metadata in the Glue Data Catalog.
6. Query the cataloged dataset using Athena SQL.
7. Connect Athena as a data source in QuickSight.
8. Build visuals and dashboards for KPI monitoring.
9. Clean up resources to avoid unnecessary costs.

## Cost Optimization

The project is designed to stay cost-conscious by using serverless services and avoiding always-on infrastructure.

Cost-control practices:

- Store only small demo datasets in S3
- Use Lambda for event-driven processing instead of always-on compute
- Use Athena selectively and avoid repeated unnecessary scans
- Prefer compressed and columnar formats for future improvements
- Clean up QuickSight trial/resources when no longer needed
- Delete Glue Crawlers, databases, and temporary S3 data after testing
- Monitor AWS Billing and Budgets

## Certification Alignment

This project supports practical learning for the AWS Certified Data Engineer Associate certification.

Relevant DEA-C01 topics:

- Data ingestion into S3
- Data lake design
- Serverless transformation with Lambda
- Metadata cataloging
- Schema discovery
- SQL-based analytics
- Data serving layer
- Security and IAM
- Cost optimization
- Monitoring and operational awareness

It also supports Solution Architect thinking through service selection, tradeoff analysis, and cost-aware architecture design.

## Future Improvements

- Add partitioned S3 dataset layout
- Convert CSV/JSON files to Parquet
- Add Glue ETL job for larger-scale transformation
- Add Athena views for business KPIs
- Add QuickSight calculated fields
- Add Infrastructure as Code with Terraform or CloudFormation
- Add CI/CD documentation for data pipeline deployment

## Author

Created by Alberto Savino as part of a practical AWS learning path focused on Data Engineering, Analytics, Business Intelligence, and Solution Architecture.
