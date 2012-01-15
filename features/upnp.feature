Feature: UPnP discovery and detection
	As a user
	I want AirPnp to discover UPnP devices
	So that it can expose them as AirPlay servers

  Scenario: Detect UPnP media renderer
    Given an empty configuration
    And a media renderer with UDN uuid:00000000-0000-0000-0000-001122334455 and name MR1 is running
    When Airpnp is started
    Then the log should contain the message "Found device MR1 [UDN=uuid:00000000-0000-0000-0000-001122334455]"

  Scenario: Ignore UPnP printer
    Given an empty configuration
    And a printer with UDN uuid:00000000-0000-0000-0000-001122334466 and name Print1 is running
    When Airpnp is started
    Then the log should contain the message "Adding device Print1 [UDN=uuid:00000000-0000-0000-0000-001122334466] to ignore list"

