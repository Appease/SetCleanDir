# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-CIStep(
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

    $Path |?{Test-Path -Path $_} | %{ri $_ -Force:$Force -Recurse:$Recurse}

}

Export-ModuleMember -Function Invoke-CIStep
