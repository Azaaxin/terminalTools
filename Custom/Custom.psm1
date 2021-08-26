function ttScriptDirectory 
{$PSScriptRoot}

$scriptPath = (ttScriptDirectory) + "\Custom.psm1"
$helpPath = (ttScriptDirectory) + "\CustomInformation.txt"
$information = Get-Content -Path ($helpPath)

function addCustomCommand
{Start (ttScriptDirectory) }

function ttHelp
{
Import-Module Custom -Force
echo $information
}

function newShortcut
{
param($name = $null, $description = $null)

if($description -ne $null){
$messageDescription = $description;
}
else
{
$messageDescription = "Shortcut";
}

$path = -join("cd ", (Get-Location));
$info = -join("`n ", ($name), " = ", ($messageDescription))
    if($name -eq $null){
        echo "Specify command name by: -name MyName"
    } else {
        $message = "`nfunction " + $name + "`n{$path}"
        Add-Content $scriptPath $message
        Add-Content $helpPath $info
        Import-Module Custom -Force
    }
}
