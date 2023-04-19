Feature: As an Admin User I should be able to Add-Edit-Delete Discounts under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup         |
      | parameters    |
      | discounts     |


  Scenario: (SP-11-TC-01) Check Add new discount - Positive Scenario

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


  Scenario: (SP-3-TC-02) Check Add new discount - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | integrationCodeInputDis | 511ofy        |
      | priorityDis             | 3             |

    Then Verify contains text

      | requiredField | cannot be left blank |

  Scenario: (SP-11-TC-03) Check Edit the discount - Positive Scenario

    And User sending the keys in Dialog Content

      | descriptionSearch | group5testing |
      | integrationSearch | 511ofy        |

    And Click on the element in Dialog

      | editButton |

    And User sending the keys in Dialog Content

      | descriptionInput        | ggroup5testing |
      | integrationCodeInputDis | 5511ofy        |
      | priorityDis             | 4             |

    And Send the TAB signal

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |


  Scenario: (SP-11-TC-04) Check Delete the field - Positive Scenario

    And User sending the keys in Dialog Content

      | descriptionSearch | ggroup5testing |
      | integrationSearch | 5511ofy        |

    And Click on the element in Dialog

      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then Verify contains text

      | successMessage | successfully |


  Scenario: (SP-11-TC-05) Check Delete the field already deleted - Negative Scenario

    And User sending the keys in Dialog Content

      | descriptionSearch | ggroup5testing |
      | integrationSearch | 5511ofy        |

    And Click on the element in Dialog

      | searchButton    |

    Then Verify contains text

      | verifyDelete | no data to display |