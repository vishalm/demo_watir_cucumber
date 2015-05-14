Feature: Simple Calculator
  In order to perform simple arithmetic operation
  As a math practitioner
  I want to creat simple calculator

  @simple_calculator
  Scenario: Addition of two numbers
    Given I have two number 150 and 70 into the calculator
    When I perform addition
    Then the result should be 220 on the screen

    @simple_calculator
  Scenario: Subtraction of two numbers
    Given I have two number 70 and 50 into the calculator
    When I perform subtraction
    Then the result should be 20 on the screen

  @simple_calculator
  Scenario: Multiplication two numbers
    Given I have two number 5 and 70 into the calculator
    When I perform multiplication
    Then the result should be 350 on the screen

  @simple_calculator
  Scenario: Divide two numbers
    Given I have two number 88 and 11 into the calculator
    When I perform division
    Then the result should be 8 on the screen

  @simple_calculator
  Scenario Outline: Perform simple arithmetic operations
    Given I have two number <param1> and <param2> into the calculator
    When I perform <operator>
    Then the result should be <expected_result> on the screen
    Examples:
      | param1 | param2 |operator       | expected_result |
      | 12     |   6    |division       | 2               |
      | 6      |   12   |division       | 0.5             |
      | 1      |   2    |multiplication | 2               |
      | 25     |   10   |multiplication | 250             |
      | -5     |   -2   |subtraction    | -3              |
      | 25.5   |   10   |subtraction    | 15.5            |
      | -5     |   -3   |addition       | -8              |
      | 10.5   |   10   |addition       | 20.5            |

  @simple_calculator
  Scenario: Using Excel as data source and performing Subtraction of two numbers
    Given I have excel test data source
    When I perform operation
    Then the result should expected