# Will run into an issue with this not being digitally signed.
# I'm not going to worry about that too much for my Kata "scratch paper".
# Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Unrestricted

<#=========================================================================
This "main" script expects that it is being run from $root/Katas/PowerShell
=========================================================================#>

Get-ChildItem -Path './KataScripts/' -Filter *.ps1 |ForEach-Object {
    . $_.FullName
}

# Flip to $True to run tests
if ($True) {
    # dot source all kata scripts and run tests
    Import-Module Pester -Passthru
    Invoke-Pester -Output Detailed .\*.Tests.ps1 
}

# Quick Smoke tests of solutions (not meant to be tests)
# $test = Get-PhoneNumberValidation("(123) 456-7890");
# Write-Host $test;
# $test1 = Get-PhoneNumberValidation("123-456-7890");
# Write-Host $test1;

$test = Get-MultiplesOf3Or5 -Value 200
Write-Host $test;