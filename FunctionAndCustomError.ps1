function TextOutput([String]$text)
{
   if($text -eq "")
   {
        throw "you have endtered some text."
   }
   else
   {
        "OUTPUT: $text"
   }
}
TextOutput Hello

Trap{"oh, an error."; Continue}; TextOutput 