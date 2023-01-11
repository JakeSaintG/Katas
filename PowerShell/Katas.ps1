# Will run into an issue with this not being digitally signed.
# I'm not going to worry about that too much for my Kata "scratch paper".
# Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Unrestricted

<#=========================================================================
This "main" script expects that it is being run from $root/Katas/PowerShell
=========================================================================#>

# https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview?view=ps-modules
Invoke-ScriptAnalyzer -Path $(Get-ChildItem -Path ".\KataScripts\*") -IncludeDefaultRules -IncludeRule PSUseOutputTypeCorrectly -Recurse -Severity Error

# Flip to $True to run tests
if ($True) {
    # dot source all kata scripts and run tests
    @( Get-ChildItem -Path '../KataScripts/*' -Filter *.ps1 -Recurse -Depth 1 -ErrorAction SilentlyContinue ) | select-object -ExpandProperty FullName;
    Import-Module Pester -Passthru
    Invoke-Pester -Output Detailed .\*.Tests.ps1 
}


# Quick Smoke tests of solutions (not meant to be tests)
Get-PhoneNumberValidation("(123) 456-7890");
Get-PhoneNumberValidation("123-456-7890");
