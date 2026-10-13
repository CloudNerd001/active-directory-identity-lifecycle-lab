# Day 4 Check

**Command:** loop checking `adlab.test` and the five required OUs
**Expected:** each name appears at least once
**Actual:** for t in "adlab.test" "Users" "Groups" "Workstations" "Servers" "ServiceAccounts"; do echo "- $t: $(grep -c "$t" architecture/ad-domain-ou-design.md)"; done
echo
**Difference:** None (First attempt failed with a quoting typo in the shell command; re-ran with the corrected command.)"
echo

**Command:** `grep -c "^| \`GRP-" architecture/ad-domain-ou-design.md`
**Expected:** 7
**Actual:** $(grep -c '^| `GRP-' architecture/ad-domain-ou-design.md)"
**Difference:** None
