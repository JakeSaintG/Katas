# Will run into an issue with this not being digitally signed.
# I'm not going to worry about that too much for my Kata "scratch paper".
# Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Unrestricted

# https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview?view=ps-modules
Invoke-ScriptAnalyzer -Path $(Get-ChildItem -Path ".\KataScripts\*") -IncludeDefaultRules -IncludeRule PSUseOutputTypeCorrectly -Recurse -Severity Error

# dot source all kata scripts
. ./KataScripts/*

# Get-PhoneNumberValidation("(123) 456-7890");    #true
# Get-PhoneNumberValidation("(1111)5X5 2345");    #false
# Get-PhoneNumberValidation("123-456-7890");      #false

