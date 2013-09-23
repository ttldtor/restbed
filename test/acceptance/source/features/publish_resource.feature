# language: en

Feature: Publishing resources
	In order to create a RESTful service
	As a developer
	I want to create one or more resources

	Scenario: Single resource
		Given I have published a resource with a custom <method> handler
		When I perform a HTTP <method> request
		Then I should see a status code of <status>
		
	Examples:
		| method  | status |
		| GET     | 200    |
		| PUT     | 200    |
		| POST    | 200    |
		| HEAD    | 200    |
		| TRACE   | 200    |
		| DELETE  | 200    |
		| CONNECT | 200    |
		| OPTIONS | 200    |

	Scenario: Multiple unique resources
		Given I have published multiple unique resources with custom <method> handlers
		When I perform HTTP <method> requests
		Then I should see a status code of <status>

	Examples:
		| method  | status |
		| GET     | 200    |
		| PUT     | 200    |
		| POST    | 200    |
		| HEAD    | 200    |
		| TRACE   | 200    |
		| DELETE  | 200    |
		| CONNECT | 200    |
		| OPTIONS | 200    |

	Scenario: Multiple duplicate resources
		Given I have published multiple resources with a path of /api
		When I perform a HTTP <method> request
		Then I should see a status code of <status>

	Examples:
		| method  | status |
		| GET     | 200    |
		| PUT     | 200    |
		| POST    | 200    |
		| HEAD    | 200    |
		| TRACE   | 200    |
		| DELETE  | 200    |
		| CONNECT | 200    |
		| OPTIONS | 200    |