# Active Directory Identity Lifecycle Lab
A hands-on lab simulating how identity and access are managed at a fictional company.

## The Company
The **National Identity Management Agency (NIMA)** is a fictional government agency that manages digital identities and provides services to up to 5,000 customers. It employs roughly 200 staff across ten departments, from the Office of the Director General to Regional Offices, and uses a central directory to manage who its people are and what they can reach.

## Organizational Structure

### Departments
```
National Identity Management Agency (NIMA)
├── Office of the Director General
├── Human Resources
├── Finance & Procurement
├── Legal & Compliance
├── Internal Audit
├── Identity Operations
├── Technology Services
├── Security Operations
├── Citizen Services
└── Regional Offices
```

### Active Directory OU Structure
```
NIMA
├── Executives
├── HumanResources
├── Finance
├── Legal
├── Audit
├── IdentityOperations
├── Technology
├── Security
├── CitizenServices
├── RegionalOffices
│
├── ServiceAccounts
├── PrivilegedAccounts
├── Servers
├── Workstations
├── Groups
├── Contractors
└── DisabledUsers
```

### Office of the Director General
**Roles:** Director General, Executive Assistant, Chief of Staff
**Resources:** Executive Portal, Strategic Planning Repository, Board Reports
## Protected Resource
**The Payroll & Finance shared drive.** It holds salary records and financial
reports, so only the right people should be able to open it. Everything in
this lab is built around controlling access to it.

## Lab Scope
This lab covers how access to company resources is granted, changed and
removed for NIMA employees:

- Creating user accounts and organising them into groups by department
- Granting access based on role, following least privilege
- Changing access when an employee moves to a new role
- Removing access when an employee leaves
- Recording evidence of each step (commands, results, notes)

**Out of scope:** real employee data, production systems, and advanced
topics such as SSO and MFA (covered in later study).

## Repository Layout
- `docs/`: written notes, including the [Identity Glossary](docs/identity-glossary.md)
- `architecture/`: diagrams and design decisions
- `scripts/`: automation used in the lab
- `tests/`: checks that access works as intended
- `evidence/`: sanitized outputs and results

