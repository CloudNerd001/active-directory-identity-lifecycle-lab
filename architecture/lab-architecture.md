# Lab Architecture

```mermaid
flowchart TB
  subgraph Host["Host laptop (Ubuntu), trusted"]
    VB[VirtualBox]
  end
  subgraph Net["Isolated network adlab-net, 192.168.50.0/24, no internet"]
    DC["NIMA-DC01 (planned DC and DNS)"]
    FS["NIMA-FS01 (planned file server)"]
    WS["Test workstation (planned)"]
  end
  VB --- Net
  WS -->|sign in| DC
  WS -->|open shares| FS
  FS -->|checks group membership| DC
```

## Threat boundaries
| Boundary | Risk | Control |
|---|---|---|
| Host and VM network | Lab traffic leaking out | Internal Network only, no NAT or bridged adapter |
| Staff and privileged accounts | Everyday account with admin rights | Separate OU and separate accounts |
| Users and shares | Over-broad access | Group-based access, least privilege |
