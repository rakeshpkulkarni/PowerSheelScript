$logon = Get-Credential
[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringtoBSTR($logon.Password))  