Feature: Admin User should be able to Add-Edit-Delete Positions under Resources Setup

  Background:
    Given I log in as an Admin

    When Click on the element in LeftNav
      | humanResources    |
      | setupInHumanR     |
      | positionsInHumanR |


  Scenario: (SP-5-TC-01) Admin should be already in the Setup under Human Resources Functionality - Positive Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Kito Catalkayaaa |

    And User sending the keys in Dialog Content
      | shortName | Kito |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |


  Scenario: (SP-5-TC-02) Admin should have already created a new positions - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Kito Catalkayaaa |

    And User sending the keys in Dialog Content
      | shortName | Kito |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | alreadyExists | already exists |


  Scenario: (SP-5-TC-03) Admin should have already created a new positions

    And User sending the keys in Dialog Content
      | searchNameInHumanR      | Kito Catalkayaaa |
      | searchShortNameInHumanR | Kito             |

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | Kito Catalkaya |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-5-TC-04)Admin User should be able to Delete Positions under Resources Setup

    And User sending the keys in Dialog Content
      | searchNameInHumanR      | Kito Catalkaya |
      | searchShortNameInHumanR | Kito           |

    And Click on the element in Dialog
      | searchButton |

    And Click on the element in Dialog
      | deleteButton |

    And Click on the element in Dialog
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-5-TC-05) Admin User should not be able to access deleted Positions under Resources Setup

    And User sending the keys in Dialog Content
      | searchNameInHumanR      | Kito Catalkaya |
      | searchShortNameInHumanR | Kito           |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |
