function RemoveWhiteSpces([String]$text)
{
    $private:array = $text.Split(" ", 
    [StringSplitOptions]::RemoveEmptyEntries)
    [String]::join(" ", $array)
}
RemoveWhiteSpces "hello sdsdf dad   saasd.sdsadd  "      