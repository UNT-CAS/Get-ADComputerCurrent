Returns an object with AD Computer information for the current computer.

# Description

This script queries the Domain Controller for information, so a connection to the DC must exist.

# Notes

Taken from this "PowerShell Tip of the Week":
https://technet.microsoft.com/en-us/library/ff730963.aspx

# REQUIREMENTS.json

Use with [REQUIREMENTS.json](https://github.com/Vertigion/REQUIREMENTS.json) like this:

```json
[
    {
        "Name": "Get-ADComputerCurrent",
        "Command": "Get-ADComputerCurrent",
        "Version": "v1.0",
        "URL": "https://github.com/UNT-CAS-ITS/{0}/archive/{1}.zip",
        "URL_f": "@($requirement.Name, $requirement.Version)",
        "Path": "{0}\\REQUIREMENTS.json\\",
        "Path_f": "$env:Temp",
        "Import": ". {0}{1}-{2}\\{1}.ps1",
        "Import_f": "@($Path, $requirement.Name, $requirement.Version.Split('v')[1])"
    }
]
```

# Links

- https://github.com/UNT-CAS-ITS/Get-ADComputerCurrent