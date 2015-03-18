####What is it?

A [PoshDevOps](https://github.com/PoshDevOps/PoshDevOps) step that sets one or more clean directories by either creating them or deleting any existing content

####How do I install it?

```PowerShell
Add-PoshDevOpsTask -Name "YOUR-CISTEP-NAME" -ModulePackageId "SetCleanDir"
```

####What parameters are available?
#####Path
A string[] representing the path(s) of one or more directories to clean.
```PowerShell
[string[]]
[ValidateCount( 1, [Int]::MaxValue)]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Path
```

#####Force
A switch representing whether to disable confirmation prompts.
```PowerShell
[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Force
```

#####Recurse
A switch representing whether to perform a recursive clean by recursively removing child directories.
```PowerShell
[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Recurse
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/0mhxw7odiyf41p4v?svg=true)

