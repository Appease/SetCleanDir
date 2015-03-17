# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-PoshDevOpsTask(
[string[]]
[ValidateCount(
    1,
    [Int]::MaxValue)]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Path,

[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Force,

[switch]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$Recurse){
    
    foreach($cleanDirPath in $Path){
        
        if(Test-Path $cleanDirPath){

           $childItems = gci $cleanDirPath -Force:$Force

           if(!$Recurse.IsPresent){

               Write-Debug "`$Recurse was not specified; excluding directories from removal list"
               $childItems = $childItems | ?{!$_.PSIsContainer}
               Write-Debug "Removal list will be $($childItems|Out-String)"
           
           }
                      
           $childItems | %{ri $_.FullName -Force:$Force -Recurse:$Recurse}

        }
        else{

            mkdir $cleanDirPath -Force:$Force                
        
        }
    }

}

Export-ModuleMember -Function Invoke-PoshDevOpsTask
