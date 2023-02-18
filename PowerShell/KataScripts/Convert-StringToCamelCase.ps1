function Convert-StringToCamelCase {
    [CmdletBinding()]
    [OutputType([string])]
    [AllowEmptyString()]
    Param(
        [Parameter(Mandatory = $false)] [string] $String
    )

    if ($String -eq ""){
        return "";
    }

    $c = ($String.ToCharArray() | Select-Object -First 1);

    $textInfo = (Get-Culture).TextInfo
    $str = $textInfo.ToTitleCase($String.Replace('-', ' ').Replace('_', ' ').ToLower());
    
    return ($c + $str[1..($str.length)]).Replace(" ", ""); 
} 
