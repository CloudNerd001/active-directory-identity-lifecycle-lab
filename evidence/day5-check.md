# Day 5 Check

_Recorded on 31 Oct 2026, after the VM was rebuilt as NIMA-DC0101. Values below were re-checked at that time._

**Command:** VBoxManage --version
**Expected:** a version number (VirtualBox installed)
**Actual:** 7.2.6_Ubuntur172322
**Difference:** None.

**Command:** sha256sum on the Windows Server evaluation ISO
**Expected:** hash matches the one recorded in docs/lab-build-plan.md
**Actual:** 7b052573ba7894c9924e3e87ba732ccd354d18cb75a883efa9b900ea125bfd51 (found 1 time(s) in the plan)
**Difference:** None.

**Command:** grep -c FILL-IN docs/lab-build-plan.md
**Expected:** 0
**Actual:** 0
**Difference:** None.

**Command:** VBoxManage showvminfo NIMA-DC0101 (memory, cpus, nic1, intnet1)
**Expected:** memory=4096, cpus=2, nic1=intnet, intnet1=adlab-net
**Actual:**
```
memory=4096
cpus=1
intnet1="adlab-net"
nic1="intnet"
```

**Notes:** VMware Workstation was tried first but the Broadcom sign-up was blocked, so VirtualBox was used. The first VM was deleted and rebuilt as NIMA-DC0101 after a leftover folder blocked the original name.
