$guid = [GUID]::NewGUID()
Foreach ($format in "N", "D","B","P") {
    "GUID with $format : {0}" -f $guid.ToString($format)}