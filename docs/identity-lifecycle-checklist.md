# Identity Lifecycle Checklist

Joiner, mover and leaver (JML) controls for the NIMA AD lab. Each event has an owner, a trigger, the access change, a verification step and a rollback step.

## Scenario: one Technology Services engineer

**Person:** Ada Okeke (fictional), Systems Engineer.

| Stage | What happens | What changes |
|---|---|---|
| **Joiner** | Ada joins Technology Services on 1 March. | Account created in the `Technology` OU, added to the Technology group, given a standard workstation and email. No admin rights. |
| **Mover** | Six months later she moves to Security Operations. | Moved to the `Security` OU. Technology group access removed, Security group access added, and a short review confirms nothing is left over from the old role. |
| **Leaver** | A year later she resigns. | Account disabled, group memberships removed, account moved to `DisabledUsers`, devices returned, and access reviewed. |

## Joiner checklist

| Item | Detail |
|---|---|
| **Owner** | HR (requests), IT Service Desk (creates the account) |
| **Trigger** | Approved hire record from HR, with start date |
| **Access change** | Create user in the Technology OU, add to the Technology group, issue a workstation, grant baseline access (email, intranet) |
| **Verification** | User appears in the correct OU; group membership matches the role; the user can sign in and open only the resources the role allows |
| **Rollback** | If created in error, disable the account and move it to `DisabledUsers`; delete after the retention period |

## Mover checklist

| Item | Detail |
|---|---|
| **Owner** | Line manager (requests), IT Service Desk (applies), HR (confirms the role change) |
| **Trigger** | Approved transfer or promotion record |
| **Access change** | Move the user to the new department's OU, add the new group(s), remove the old group(s) |
| **Verification** | New access works; old access no longer works; no leftover memberships from the previous role (least privilege) |
| **Rollback** | Restore the previous OU and group memberships from the change record if the transfer is cancelled |

## Leaver checklist

| Item | Detail |
|---|---|
| **Owner** | HR (notifies), IT Service Desk (disables), Security Operations (confirms) |
| **Trigger** | Approved resignation or termination record with last working day |
| **Access change** | Disable the account on the last day, remove all group memberships, reset or revoke sessions and tokens, move to `DisabledUsers`, recover devices |
| **Verification** | Sign-in fails; the account is in `DisabledUsers`; no active groups or sessions remain |
| **Rollback** | Re-enable the account and restore memberships from the record if the exit was cancelled or recorded in error |

## Notes
- Every change needs an approved request, so access is never granted informally.
- Privileged accounts, service accounts and contractors follow the same cycle, with extra approval and review.
- Names and data in this lab are fictional.
