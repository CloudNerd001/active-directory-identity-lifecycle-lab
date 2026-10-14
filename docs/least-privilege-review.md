# Least Privilege Review

Review of the first design (`architecture/ad-domain-ou-design.md`) against least privilege.

## Review

| Design choice | Verdict | Note |
|---|---|---|
| Access granted through groups, never to individuals | Pass | Easy to audit and to remove |
| One group per folder or responsibility | Pass | No group is a catch-all |
| Privileged accounts kept in a separate OU | Pass | Admins use a normal account day to day |
| `GRP-Security-Ops` has read access to all shares | Review | Broader than any single department; needs justification |
| `GRP-IT-Helpdesk` can manage accounts in the Users OU | Review | Must not reach `PrivilegedAccounts` |
| Service accounts isolated in their own OU | Pass | Reviewable separately |
| Contractors have their own OU | Pass | Needs expiry dates (see questions) |

## Threat boundaries
- Host laptop to VM: the VM sits on an internal network only, with no NAT or bridging.
- Staff accounts to privileged accounts: separate OU and separate credentials.
- Users to shares: access only through group membership.

## Questions to investigate during the build
1. How do I delegate password resets to the helpdesk without giving them rights over privileged accounts?
2. Should Security-Ops read access be limited to audit logs instead of every share?
3. How do I stop a mover keeping old group memberships (the mover checklist)?
4. How do contractor accounts get an automatic expiry date?
5. What is the safest way to store the first password for test users?
6. How do I prove a disabled account in `DisabledUsers` can no longer sign in?
7. Which default AD groups (such as Domain Admins) need checking after the domain is built?
