Feature: Resources should be properly tagged
  In order to keep track of resource ownership
  As engineers
  We'll enforce tagging on all resources

  Scenario: Name tag
    Given I have resource that supports tags defined
    Then it must have the "Name" tags property
    And its value must match the "darwin.*" regex

  Scenario: Environment tag
    Given I have resource that supports tags defined
    Then it must have the "Environment" tags property
    And its value must be set by a variable

  Scenario: Project tag
    Given I have resource that supports tags defined
    Then it must have the "Project" tags property
    And its value must match the "Darwin" regex

  Scenario: Service tag
    Given I have resource that supports tags defined
    Then it must have the "Service" tags property
    And its value must match the "modelling|enhancement|routing|scoring" regex

  Scenario: Function tag
    Given I have resource that supports tags defined
    Then it must have the "Function" tags property

  Scenario: Billing tag
    Given I have resource that supports tags defined
    Then it must have the "Billing" tags property