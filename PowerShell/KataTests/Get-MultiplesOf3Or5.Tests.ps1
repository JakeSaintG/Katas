Describe "Fixed Tests" {
	It "Should Pass" {
		Get-MultiplesOf3Or5(10) | Should -Be 23
	}
	It "Should Pass" {
		Get-MultiplesOf3Or5(20) | Should -Be 78
	}
	It "Should Pass" {
		Get-MultiplesOf3Or5(200) | Should -Be 9168
	}
	It "Should Pass" {
		Get-MultiplesOf3Or5(0) | Should -Be 0
	}
}
