# Database DevOps Project

This project is designed to automate database deployments and infrastructure management using Terraform, GitHub Actions, and Liquibase. It provides a framework for managing Azure SQL databases and automates the deployment process to ensure consistency and reliability in database operations.

## Project Structure

- `.gitignore`: Specifies intentionally untracked files to ignore.
- `.github/workflows/database_devops.yml`: GitHub Actions workflow for CI/CD.
- `liquibase/`: Contains Liquibase changelogs and properties for database migrations.
- `main.tf`: Terraform configuration file for defining the Azure infrastructure.
- `outputs.tf`: Terraform outputs file.
- `variables.tf`: Terraform variables file.
