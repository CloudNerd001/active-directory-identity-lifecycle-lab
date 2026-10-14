# Day 6 Check

**Command:** PowerShell syntax check (Parser.ParseFile) on scripts/*.ps1
**Expected:** 0 errors in each script
**Actual:**
```
01-build-domain.ps1: 0 error(s)
02-create-groups.ps1: 0 error(s)
03-create-test-users.ps1: 0 error(s)
```

**Command:** ls scripts docs architecture
**Expected:** 3 scripts, least-privilege-review.md, lab-architecture.md present
**Actual:**
```
architecture:
ad-domain-ou-design.md
lab-architecture.md
protocol-flows.md

docs:
identity-glossary.md
identity-lifecycle-checklist.md
lab-build-plan.md
least-privilege-review.md

scripts:
01-build-domain.ps1
02-create-groups.ps1
03-create-test-users.ps1
```

**Difference:** (fill in after reading: none, or what failed and how you fixed it)
