function test
{
Trap [System.DivideByZeroException]
    "devide by null"; Continue
}
1/$null
