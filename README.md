####What is it?

A Posh-CI step that sets one or more clean directories by either creating them or deleting any existing content

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "Posh-CI-SetCleanDir"
```

####What parameters are available?
#####Path
a string[] representing the path(s) of one or more directories to clean
```PowerShell
[string[]]
[ValidateCount(
    1,
    [Int]::MaxValue)]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Path
```

#####Force
a switch representing whether to disable confirmation prompts
```PowerShell
[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Force
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/sye7k4oc83plnib3?svg=true)

