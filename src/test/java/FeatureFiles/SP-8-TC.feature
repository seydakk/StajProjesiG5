Feature: As an Admin User I should be able to Add-Edit-Delete Fields under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav
      | setup       |
      | schoolSetup |
      | departments |

  Scenario: (SP-8-TC-01) Check Add new School Department - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | group5testing |
      | codeInput | 12345         |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |


  Scenario: (SP-8-TC-02) Check Add new School Department with same data - Negative Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | group5testing |
      | codeInput | 12345         |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | alreadyDepartmentExists | already Department |


  Scenario: (SP-8-TC-03) Check Edit the School Department - Positive Scenario

    And Click on the element in Dialog
      | manualEditButton |

    And User sending the keys in Dialog Content
      | nameInput | group5test |
      | codeInput | 12345      |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-8-TC-04) Check Delete the School Department - Positive Scenario

    And Click on the element in Dialog
      | manualDeleteButton |

    And Click on the element in Dialog
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-8-TC-05) Check Delete the School Department already deleted - Negative Scenario

    Then Verify no data to display
      | deletedList |

