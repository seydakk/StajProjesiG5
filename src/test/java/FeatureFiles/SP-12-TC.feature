Feature: As an Admin User I should be able to Add-Edit-Delete Nationalities under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup         |
      | parameters    |
      | nationalities |

  Scenario: (SP-12-TC-01) Check Add new Nationality - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | group5testing |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |


  Scenario: (SP-12-TC-02) Check Add new Nationality with same data - Negative Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | group5testing |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | alreadyExists | already exists |


  Scenario: (SP-12-TC-03) Check Edit the Nationality - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | group5testing |

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | group5test |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-12-TC-04) Check Delete the Nationality - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | group5test |

    And Click on the element in Dialog
      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-12-TC-05) Check Delete the Nationality already deleted - Negative Scenario

    And User sending the keys in Dialog Content
      | searchName | group5test |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |
