$date = Get-Date
foreach ($format in "d","D","f","F","g","G","m","r","s","T","u","U","y","dddd,MMMM dd yyyy","M/yy","dd-mm-yy") {
"Date With $format : {0}" -f $date.ToString($format)}

