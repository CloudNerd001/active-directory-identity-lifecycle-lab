<#
.SYNOPSIS
    Stub: create fictional test users.
.NOTES
    No passwords are stored in this file. Prompt for one at run time.
#>
[CmdletBinding(SupportsShouldProcess)]
param()

$testUsers = @(
    @{ Sam = 'aokeke'; Name = 'Ada Okeke'; Dept = 'Technology'; Group = 'GRP-Technology-Staff' },
    @{ Sam = 'tbello'; Name = 'Tunde Bello'; Dept = 'Finance'; Group = 'GRP-Finance-Staff' },
    @{ Sam = 'cnwosu'; Name = 'Chioma Nwosu'; Dept = 'HumanResources'; Group = 'GRP-HR-Staff' }
)

foreach ($u in $testUsers) {
    if ($PSCmdlet.ShouldProcess($u.Sam, 'Create test user')) {
        # TODO: $pw = Read-Host -AsSecureString 'Initial password'
        # TODO: New-ADUser -SamAccountName $u.Sam -Name $u.Name -AccountPassword $pw -Path "OU=$($u.Dept),OU=Users,OU=NIMA,DC=adlab,DC=test" -Enabled $true
        # TODO: Add-ADGroupMember -Identity $u.Group -Members $u.Sam
        Write-Host "[stub] Would create $($u.Name) in $($u.Dept)"
    }
}
