# AD Domain and OU Design

Design for the NIMA lab environment. This is a single-forest, single-domain setup with one domain controller.

## Domain Design

| Item | Value |
|---|---|
| **Forest** | `adlab.test` (one forest) |
| **Domain** | `adlab.test` (one domain, the forest root) |
| **NetBIOS name** | `ADLAB` |
| **Domain controller** | `NIMA-DC01` (also runs DNS) |
| **File server (planned)** | `NIMA-FS01` |
| **Why one domain** | A lab this size needs no extra domains. Fewer moving parts keep the build simple. |

## OU Structure

Objects are grouped by **type** first (Users, Groups, Workstations, Servers, ServiceAccounts), and users are split by **department** inside the Users OU.

```
adlab.test
└── NIMA
    ├── Users
    │   ├── Executives
    │   ├── HumanResources
    │   ├── Finance
    │   ├── Technology
    │   ├── Security
    │   ├── CitizenServices
    │   └── Contractors
    ├── Groups
    ├── Workstations
    ├── Servers
    ├── ServiceAccounts
    ├── PrivilegedAccounts
    └── DisabledUsers
```

| OU | What it holds |
|---|---|
| **Users** | Staff accounts, split by department OU |
| **Groups** | Security groups used to grant access |
| **Workstations** | Staff computer accounts |
| **Servers** | Server computer accounts (file server, application servers) |
| **ServiceAccounts** | Accounts used by applications and scripts, never by people |
| **PrivilegedAccounts** | Separate admin accounts, kept apart from daily accounts |
| **DisabledUsers** | Leavers' accounts, parked here after disabling (see the lifecycle checklist) |

## Groups and Their Responsibilities

Each group maps to **one folder or one administrative responsibility**.

| Group | Members | Maps to | Access |
|---|---|---|---|
| `GRP-HR-Staff` | HR users | `\\NIMA-FS01\HR` | Modify |
| `GRP-Finance-Staff` | Finance users | `\\NIMA-FS01\Finance` | Modify |
| `GRP-Technology-Staff` | Technology users | `\\NIMA-FS01\Technology` | Modify |
| `GRP-Executives` | Executive users | `\\NIMA-FS01\Executive` | Modify |
| `GRP-Security-Ops` | Security users | Read-only audit view of all shares (administrative responsibility: security monitoring) | Read |
| `GRP-IT-Helpdesk` | Service desk users | Administrative responsibility: reset passwords and manage accounts in the Users OU | Delegated |
| `GRP-Server-Admins` | Privileged accounts | Administrative responsibility: manage the Servers OU | Delegated |

## Naming Conventions
- Groups: `GRP-<Area>-<Purpose>`
- Service accounts: `svc-<application>`
- Computers: `NIMA-<role><number>` (for example `NIMA-DC01`)

## Design Decisions
- **Users and groups are separated** so access is granted through groups, never directly to people (least privilege).
- **Privileged accounts are separate** from everyday accounts, so an admin's normal account has no special rights.
- **DisabledUsers** gives a clear place for leavers, linking the OU design to the joiner, mover, leaver checklist.
- **Service accounts are isolated** so they can be reviewed and locked down on their own.0


## How this supports the lab build
This is the blueprint for the domain controller setup: the domain name, the OU tree to create, and the groups to build and map to resources.
