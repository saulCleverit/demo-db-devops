# Database DevOps Project

This workspace is set up for a Database DevOps project focused on automating database deployments and infrastructure management using Terraform, GitHub Actions, and Liquibase. It is designed to manage Azure SQL databases and ensure consistency and reliability in database operations. Here's a breakdown of its key components:

Terraform Configuration: Located in the iac/ directory, it includes Terraform files like main.tf, outputs.tf, and variables.tf for defining the Azure infrastructure, outputs, and variables, respectively. There are also .tfvars files for local and backend configurations, and a .terraform.lock.hcl file for dependency locking.

GitHub Actions Workflows: Found in .github/workflows/, there are several YAML files defining CI/CD workflows:

iac.yml and iac_destroy.yml for setting up and tearing down infrastructure using Terraform.

Liquibase Configuration: The liquibase/ directory contains changelog.json and a changelogs/ subdirectory with JSON files for database schema changes, such as creating tables, views, and procedures.

This setup allows for automated, consistent, and reliable management and deployment of database changes and infrastructure, leveraging the strengths of Terraform for infrastructure as code (IaC), GitHub Actions for continuous integration and deployment (CI/CD), and Liquibase for database schema changes.

## Project Structure

- `.gitignore`: Specifies intentionally untracked files to ignore.
- `.github/workflows/database_devops.yml`: GitHub Actions workflow for CI/CD.
- `liquibase/`: Contains Liquibase changelogs and properties for database migrations.
- `main.tf`: Terraform configuration file for defining the Azure infrastructure.
- `outputs.tf`: Terraform outputs file.
- `variables.tf`: Terraform variables file.
