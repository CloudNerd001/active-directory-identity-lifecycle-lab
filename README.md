# Active Directory Identity Lifecycle Lab

A hands-on lab simulating how identity and access are managed at a fictional company.

## The Company
**Funsho Technologies** is a fictional company of about 50 employees across
HR, Finance, IT and Sales. It uses a central directory to manage who its
people are and what they can reach.

## Protected Resource
**The Payroll & Finance shared drive.** It holds salary records and financial
reports, so only the right people should be able to open it. Everything in
this lab is built around controlling access to it.

## Lab Scope
This lab covers how access to company resources is granted, changed and
removed for Funsho employees:

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

## Status
Day 1: folder structure, glossary and company definition complete.
