# Day 3 Check

**Command:** `grep -c "^## .* checklist" docs/identity-lifecycle-checklist.md`
**Expected:** 3 (joiner, mover, leaver)
**Actual:** 3
**Difference:** none.

**Command:** **Command:** `grep -c "Owner\|Trigger\|Access change\|Verification\|Rollback" docs/identity-lifecycle-checklist.md`
**Expected:** 15
**Actual(first run):** 12
**Difference:** Three rows didn't match because of a typo in one field name.
**Fix:** Corrected the typo in the checklist file.
**Actual(after fix):** 15
