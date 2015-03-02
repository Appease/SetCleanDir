####What is it?

A PoshCI step that sets one or more clean directories by either creating them or deleting any existing content

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "SetCleanDir"
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

#####Recurse
a switch representing whether to perform a recursive clean by recursively removing child directories
```PowerShell
[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Recurse
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/sye7k4oc83plnib3?svg=true)

