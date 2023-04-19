Feature: Admin User should be able to Add-Edit-Delete Grade Levels under Parameters Setup

  Background:
    Given I log in as an Admin

    When Click on the element in LeftNav
      | setupForGradeLevels |
      | parameters          |
      | gradeLevels         |

  Scenario:(SP-10-TC-01) Admin should be already in the Setup-Parameters under Grade Levels Functionality - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput         | Gırgırrr |
      | newGradeShortName | Gırgır   |
      | newGradeOrder     | 2021     |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


    Scenario: (SP-10-TC-02) Admin User should be able to Add Grade Levels under Parameters Setup - Negative Scenario

      And Click on the element in Dialog
        | addButton |

      And User sending the keys in Dialog Content
        | nameInput         | Gırgırrr |
        | newGradeShortName | Gırgır   |
        | newGradeOrder     | 2021     |

      And Click on the element in Dialog
        | saveButton |

      Then Verify contains text
        | alreadyExists | already exists |


      Scenario:(SP-10-TC-03) Admin User  should be able to Edit Grade Levels under Parameters Setup - Positive Scenario


      Scenario:(SP-10-TC-04) Admin User should be able to Delete Grade Levels under Parameters Setup - Positive Scenario


      Scenario:(SP-10-TC-05) Admin User should be able to Delete Grade Levels under Parameters Setup - Negative Scenario


