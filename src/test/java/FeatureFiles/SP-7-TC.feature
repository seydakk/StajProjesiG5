Feature: As an Admin User I should be able to Add-Edit-Delete School Locations under School Setup

  Background:
    Given I log in as an Admin

    When Click on the element in LeftNav

      | setup       |
      | schoolSetup |
      | locations   |

  Scenario: (SP-7-TC-01) Check Add new School Location - Positive Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput         | name10       |
      | locationShortName | shortname2  |
      | capacity          | 1000        |

    And Click on the element in Dialog
      | toggleBar  |
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchName |


  Scenario: (SP-7-TC-02) Check Add new School Location with same data - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput         | name10      |
      | locationShortName | shortname2  |
      | capacity          | 1000        |

    And Click on the element in Dialog
      | toggleBar  |
      | saveButton |

    And Verify contains text
      |locationAlreadyExist| already exists  |


  Scenario: (SP-7-TC-03) Check Edit the School Location - Positive Scenario

    And Click on the element in Dialog
      | manualEditButtonForLocation |

    And User sending the keys in Dialog Content
      | nameInput         | name11      |
      | locationShortName | shortname2  |
      | capacity          | 1000        |

    And Click on the element in Dialog
      | toggleBar  |
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-7-TC-04)

    And Click on the element in Dialog
      | manualDeleteButtonForLocation |

    And Click on the element in Dialog
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-7-TC-05) Check Delete the School Location already deleted - Negative Scenario
    Then Verify no data to display
      | deletedList |
