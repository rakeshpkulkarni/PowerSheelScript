$Command = Get-Command ping
& $Command -n 12 -w 100 10.10.10.10
