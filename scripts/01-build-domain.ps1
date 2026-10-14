<#
.SYNOPSIS
    Stub: build the adlab.test domain on NIMA-DC01.
.NOTES
    Not yet run. Run only on the lab VM, never on the host.
#>
[CmdletBinding(SupportsShouldProcess)]
param(
    [string]$DomainName = 'adlab.test',
    [string]$NetBiosName = 'ADLAB'
)

function Install-LabForest {
    # TODO: install the AD DS role, then promote the server.
    # Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
    # Install-ADDSForest -DomainName $DomainName -DomainNetbiosName $NetBiosName
    Write-Host "[stub] Would build forest $DomainName ($NetBiosName)"
}

function New-LabOuStructure {
    # TODO: create the NIMA OU and its child OUs (see architecture/ad-domain-ou-design.md)
    Write-Host '[stub] Would create the OU structure'
}

if ($PSCmdlet.ShouldProcess($DomainName, 'Build domain')) {
    Install-LabForest
    New-LabOuStructure
}
