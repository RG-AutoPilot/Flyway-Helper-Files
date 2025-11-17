# Flyway Helper Files - Demo VM Edition

**Internal Demo Repository** - Pre-configured Flyway helper scripts for Redgate demo environments and virtual machines.

## 🎯 Purpose

This repository contains ready-to-use Flyway CLI scripts specifically configured for Redgate demo virtual machines. Unlike the [public customer repository](https://github.com/csnhawkins/Flyway-Helper-Files), these scripts are pre-configured with demo environment settings and credentials suitable for demonstration purposes.

## 🚀 Deployment Methodologies

This repository provides examples for both Flyway deployment approaches:

### 📁 Migrations-based Deployment
**Location:** `CLI/Migrations/`

Sequential, version-controlled database changes ideal for:
- New project demonstrations
- Showing CI/CD integration capabilities
- Demonstrating rollback scenarios
- Version control best practices

**Script Workflow:**
1. **00_Diff** - Compare environments to identify changes
2. **01_Model** - Generate schema model for state comparison  
3. **02_Generate** - Create migration scripts from differences
4. **03_Migrate** - Deploy migrations to target environment
5. **04_Undo** - Rollback migrations for demo scenarios

### 🎯 State-based Deployment  
**Location:** `CLI/State/`

Model-driven approach perfect for:
- Legacy database demonstrations
- Complex schema scenarios
- Showing automatic conflict resolution
- Multi-developer workflow demos

**Script Workflow:**
1. **00_Diff** - Compare current state with desired model
2. **01_Model** - Update or validate schema model
3. **02_Prepare** - Generate deployment script with dry-run
4. **03_Deploy** - Execute deployment script against target

## 🛠️ Demo VM Configuration

### Pre-configured Settings

The scripts in this repository are pre-configured for common demo scenarios:

- **SQL Server:** Local instance with demo databases
- **PostgreSQL:** Local instance with sample schemas
- **Working Directories:** Mapped to standard demo VM paths
- **Demo Credentials:** Safe for demonstration use (non-production)

### Platform Support

- **Windows PowerShell** - Primary platform for most demos
- **Linux Bash** - For cross-platform demonstrations
- **SQL Server** - Primary database platform
- **PostgreSQL** - Secondary platform for variety

## 🎪 Demo Scenarios

These scripts support common demonstration scenarios:

### New Project Demo
Use the Migrations workflow to show how teams can start with Flyway from day one.

### Legacy Migration Demo  
Use the State-based workflow to demonstrate migrating existing complex databases.

### DevOps Integration Demo
Show how these scripts integrate with CI/CD pipelines and automated deployment processes.

### Multi-Environment Demo
Demonstrate promoting changes through development → staging → production environments.

## 🔧 Quick Start for Demos

### Prerequisites
- Flyway CLI installed and in PATH
- SQL Server/PostgreSQL running locally
- PowerShell or Bash environment
- Demo databases prepared

### Running a Demo

1. **Choose your scenario:** Migrations vs State-based
2. **Select platform:** MSSQL vs PostgreSQL  
3. **Pick environment:** Windows PowerShell vs Linux Bash
4. **Execute scripts in sequence** (00 → 01 → 02 → 03)

### Demo Tips

- Start with `00_Diff` to show current state analysis
- Use `01_Model` to demonstrate schema modeling capabilities
- `02_Generate/Prepare` shows Flyway's planning phase
- `03_Migrate/Deploy` demonstrates the actual deployment
- `04_Undo` (Migrations only) shows rollback capabilities

## 🔐 Demo Security Notes

⚠️ **Demo Environment Only**: These scripts contain demo credentials and configurations suitable only for demonstration virtual machines. 

**For Customer Workshops:**
- Direct customers to the [public repository](https://github.com/csnhawkins/Flyway-Helper-Files) for production-ready examples
- Emphasize security best practices from the customer-facing repository
- Show how to implement secure credential management