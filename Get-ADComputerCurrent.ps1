<#
.SYNOPSIS
Returns an object with AD Computer information for the current computer.
.DESCRIPTION
This script queries the Domain Controller for information, so a connection to the DC must exist.
.NOTES
Taken from this "PowerShell Tip of the Week":
https://technet.microsoft.com/en-us/library/ff730963.aspx
#>
function Get-ADComputerCurrent {
    $objSearcher = New-Object System.DirectoryServices.DirectorySearcher
    $objSearcher.Filter = "(&(objectCategory=Computer)(Name=${env:ComputerName}))"

    try {
        return $objSearcher.FindOne()
    } catch [System.Management.Automation.MethodInvocationException] {
        Write-Warning $_.Exception.Message
        return $false
    }
}