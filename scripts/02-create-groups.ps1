<#
.SYNOPSIS
    Stub: create the lab security groups.
#>
[CmdletBinding(SupportsShouldProcess)]
param(
    [string]$BaseDn = 'DC=adlab,DC=test'
)

$groups = @(
    'GRP-HR-Staff',
    'GRP-Finance-Staff',
    'GRP-Technology-Staff',
    'GRP-Executives',
    'GRP-Security-Ops',
    'GRP-IT-Helpdesk',
    'GRP-Server-Admins'
)

foreach ($name in $groups) {
    if ($PSCmdlet.ShouldProcess($name, 'Create security group')) {
        # TODO: New-ADGroup -Name $name -GroupScope Global -GroupCategory Security -Path "OU=Groups,OU=NIMA,$BaseDn"
        Write-Host "[stub] Would create group $name"
    }
}
