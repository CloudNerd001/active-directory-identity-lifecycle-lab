# Lab Build Plan

Plan for the local Windows Server evaluation VM and isolated network used in the NIMA AD lab. The domain controller is **not** promoted yet.

## Hypervisor
| Item | Value |
|---|---|
| Hypervisor | VirtualBox on Ubuntu |
| Version | 7.2.6_Ubuntu r172322
| Host requirements checked | CPU virtualization support, RAM, free disk |

## Evaluation Media
| Item | Value |
|---|---|
| Product | Windows Server evaluation ISO (version: Windows Server 2025, build 26100) |
| Source URL | https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2025
| File name | https://software-static.download.prss.microsoft.com/dbazure/998969d5-f34g-4e03-ac9d-1f9786c66749/26100.32230.260111-0550.lt_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso
| SHA-256 | 7b052573ba7894c9924e3e87ba732ccd354d18cb75a883efa9b900ea125bfd51
| Evaluation period | 2022

## VM Specification
| Item | Value |
|---|---|
| Name | `NIMA-DC01` |
| Role (planned) | Domain controller and DNS for `adlab.test` |
| OS | Windows Server (evaluation) |
| vCPUs | 2 |
| RAM | 4 GB |
| Disk | 60 GB, dynamically allocated |
| Network adapter | 1, Internal Network `adlab-net` |

## Isolated Network Plan
| Item | Value |
|---|---|
| Type | VirtualBox Internal Network (`adlab-net`) |
| Isolation | No NAT or bridged adapter, so no internet and no access to the host |
| Subnet | 192.168.50.0/24 |
| NIMA-DC01 | 192.168.50.10 (static) |
| NIMA-FS01 (planned) | 192.168.50.11 (static) |
| Test workstation (planned) | 192.168.50.20 (static) |
| DNS | NIMA-DC01 (192.168.50.10) |
| Trade-off | The VM cannot reach Windows Update, which is acceptable for a short-lived lab |

## Build Commands Used
```
VBoxManage createvm --name NIMA-DC01 --ostype Windows2022_64 --register
VBoxManage modifyvm NIMA-DC01 --memory 4096 --cpus 2 --vram 16 --nic1 intnet --intnet1 adlab-net
(disk creation, storage controller and ISO attach commands as run)
```

## Before Promoting the Domain Controller
- Install Windows Server and set the static IP address
- Take a **snapshot** so the install can be rolled back
- Then follow the domain and OU design in `architecture/ad-domain-ou-design.md`

## How this supports the lab build
It fixes the machine, network and media in advance, so the domain controller promotion can start from a known, isolated and recoverable state.
