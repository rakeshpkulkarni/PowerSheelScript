$logon = Get-Credential
[Runtime.InteropServices.Marshall]:: PtrToStringAuto([Runtime.InteropServices.Marshall]:: SecureStringtoBSTR($logon.Password)) 
