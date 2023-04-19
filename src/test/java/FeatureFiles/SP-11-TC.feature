Feature: As an Admin User I should be able to Add-Edit-Delete Discounts under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup         |
      | parameters    |
      | discounts     |


  Scenario: (SP-11-TC-01) Check Add new document - Positive Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | descriptionInput        | group5testing |
      | integrationCodeInputDis | 511ofy        |
      | priorityDis             | 3             |

    And Send the TAB signal

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |


  Scenario: (SP-11-TC-02) Check Edit the document - Positive Scenario



  Scenario: (SP-11-TC-03) Check Delete the field - Positive Scenario



  Scenario: (SP-11-TC-04) Check Delete the field already deleted - Negative Scenario

