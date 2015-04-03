![](https://ci.appveyor.com/api/projects/status/0mhxw7odiyf41p4v?svg=true)

####What is it?

An [Appease](http://appease.io) task template that sets one or more clean directories by either creating them or deleting any existing content

####How do I install it?

```PowerShell
Add-AppeaseTask `
-DevOpName YOUR-DEVOP-NAME `
-Name YOUR-TASK-NAME `
-TemplateId SetCleanDir
```

####What parameters are required?
#####Path
description: a `string[]` representing the path(s) of one or more directories to clean.

####What parameters are optional?

#####Force
description: a `switch` representing whether to disable confirmation prompts.

#####Recurse
description: a `switch` representing whether to perform a recursive clean by recursively removing child directories.