function edit-file([string]$path=$(Throw "Specify a relative path!"))
{
$files = Resolve-Path $path -ea SilentlyContinue
if (!$?)
{
"No file met your criterion."; break
}
if($files -is [array])
{
Write-Host -ForegroundColor Red -BackgroundColor White `
"Do you want to open these files?"
foreach ($file in $files)
{
 "_ " + $file.path
}
$yes = ([System.Management.Automation.Host.ChoiceDescription]"&yes")
$no = ([System.Management.Automation.Host.ChoiceDescription]"&no")
$choices = [System.Management.Automation.Host.ChoiceDescription[]]($yes,$no)
$result = $Host.UI.PromptForChoice('Open files','Open these files?',$choices,1)

if ($result -eq 0)
{
    foreach ($file in $files)
    {
        & $file
    }
}
}
else
{
    & $files
}
}
edit-file "C:\Users\e3025481\test.htm"