 $xml = @'
<?xml version="1.0" standalone="yes"?>
<staff branch="RIM" type="development">
<employee>
<Name>rakesh kulkarni</Name>
<function>test</function>
<age>24</age>
</employee>
<employee>
<Name>Gopi</Name>
<function>deployment</function>
<age>30</age>
</employee>
</staff>
'@ | Out-File employee.xml

$xmldata = [xml](Get-Content "C:\Users\rakesh.kulkarni\employee.xml")

$xmldata.staff.employee | ? { $_.Name -match "rakesh kulkarni" }  