# Get-ChildItem -Path "./../../Katas/PowerShell/KataScripts/Get-PhoneNumberValidation.ps1"

Describe 'Test Cases' {
	It 'Should be true' {
		Get-PhoneNumberValidation("(123) 456-7890") | Should -Be $true;
	}
	
	It 'Should be false' {
		Get-PhoneNumberValidation("(1111)5X5 2345") | Should -Be $false;
	}

	It 'Should be false' {
		Get-PhoneNumberValidation("123-456-7890") | Should -Be $false;
	}
}