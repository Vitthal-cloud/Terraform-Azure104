# Day2 – Terraform Azure Basics

This project is part of my Terraform learning journey focused on **Azure infrastructure using a low-cost practice approach**.

## What this project does
- Creates an Azure Resource Group
- Uses Terraform best practices:
  - Input variables
  - Local values
  - Outputs
- Follows clean folder and file structure

## Files in this project
- `main.tf`       → Terraform configuration
- `README.md`     → Project documentation

## Terraform Concepts Used
- Input Variables (`variable`)
- Local Values (`locals`)
- Azure Provider (`azurerm`)
- Outputs (`output`)

## How to use this project

```bash
cd Day2
terraform init
terraform validate
terraform plan
