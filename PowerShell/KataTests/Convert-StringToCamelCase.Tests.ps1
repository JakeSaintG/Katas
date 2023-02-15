Describe "Fixed Tests" {
	It "Should pass" {
		Convert-StringToCamelCase("the_stealth_warrior") | Should -Be "theStealthWarrior"
	}
	
	It "Should pass" {
		Convert-StringToCamelCase("The-Stealth-Warrior") | Should -Be "TheStealthWarrior"
	}
	
	It "Should pass" {
		Convert-StringToCamelCase("") | Should -Be ""
	}
	
	It "Should pass" {
		Convert-StringToCamelCase("A-B-C") | Should -Be "ABC"
	}
}
