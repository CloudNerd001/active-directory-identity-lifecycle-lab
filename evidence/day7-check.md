# Day 7 Check

Recorded 31 Oct 2026 for VM NIMA-DC0101.

| Check | Expected | Actual | Difference |
|---|---|---|---|
| hostname | NIMA-DC0101 | NIMA-DC0101 | None |
| IPv4 address | 192.168.50.10/24, Manual | 192.168.50.10/24, Manual | None |
| DNS server | 192.168.50.10 | 192.168.50.10 | None |
| Install-WindowsFeature AD-Domain-Services | Success: True | Success: True, Restart Needed: No | None |
| Get-WindowsFeature AD-Domain-Services | Installed | Installed ([X] shown) | None |
| Test-Connection 8.8.8.8 from the VM (denial) | Fails (isolated) | Failed (no reply) | None |
| Ping 192.168.50.10 from the host (denial) | Fails (isolated) | Failed, 100% packet loss | None |

Note: the VM has 1 CPU, but the plan specifies 2. It will be changed after the evidence is captured.

Screenshots: evidence/day7-server-manager.png, evidence/day7-checks.png, evidence/day7-hostname.png, evidence/day7-server-manager-adds.png
