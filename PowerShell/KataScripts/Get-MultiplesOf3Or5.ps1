function Get-MultiplesOf3Or5 {
    [CmdletBinding()]
    [OutputType([Int])]
    Param(
        [Parameter(Mandatory = $true)] [int] $Value
    )

    $sum = 0;

    for ($i = 0; $i -lt $Value; $i++) {
        if (($i % 5 -eq 0) -or ($i % 3 -eq 0)) {$sum += $i};
    }

    return $sum;
}