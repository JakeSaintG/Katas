#code wars

<# =============================================================================================
Write a function that accepts a string, and returns true if it is in the form of a phone number.
Assume that any integer from 0-9 in any of the spots will produce a valid phone number.

Only worry about the following format:
(123) 456-7890
============================================================================================= #>

function Get-PhoneNumberValidation
{
    [CmdletBinding()]
    [OutputType([Boolean])]
    Param(
        [Parameter(Mandatory=$true)] [String] $PhoneNumber
    )

    if ($PhoneNumber -match '^\(\d{3}\) \d{3}-\d{4}$') {
        return $true;
    }

    return $false;
}

<#
Notes:

    Don't need to return and don't need to use an if block.

    $PhoneNumber -match '^\(\d{3}\) \d{3}-\d{4}$'
        By itself would have returned true or false,
#>