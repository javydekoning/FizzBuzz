<#
.Synopsis
   Fizz Buzz PowerShell example
.DESCRIPTION
   Any number divisible by three is replaced by the word fizz and any divisible 
   by five by the word buzz. Numbers divisible by both become fizz buzz.
   https://en.wikipedia.org/wiki/Fizz_buzz
.EXAMPLE
   Get-FizzBuzz -input 2
.EXAMPLE
   Get-FizzBuzz -input 5
#>
function Get-FizzBuzz
{
    [CmdletBinding()]
    [Alias()]
    Param
    (
        [Parameter(Mandatory=$true,Position=0)]
        [int]
        $in    
    )

    switch ($in) 
    { 
      {$in % 3 -eq 0 -and $in % 5 -eq 0}  {Return "Fizz Buzz"} 
      {$in % 3 -eq 0}  {Return "Fizz"} 
      {$in % 5 -eq 0}  {Return "Buzz"} 
      default {Return $in}
    }

}

(1..100 | %{Get-FizzBuzz $_}) -join ', '