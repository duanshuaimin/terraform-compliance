Feature: Feature for issue #285
	Scenario: Ensure 'Trusted Microsoft Services' is enabled for Storage Account access
		Given I have azurerm_storage_account defined
		Then it must contain network_rules
		And it must contain bypass
		And its value must contain the "(^AzureServices$)" regex