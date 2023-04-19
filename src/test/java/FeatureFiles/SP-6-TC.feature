Feature: Education Functionality

  Background:
    Given  I log in as an Admin
    When Click on the element in LeftNav
      | education |
      | setupEdu |
      | subjectCategories  |

  Scenario: (SP-6-TC-01) Create Subject Category  Positive Scenario


    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | naturalScience |
      | codeInput | N11        |

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |


  Scenario: (SP-6-TC-02) Add new document with same data - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | naturalScience |
      | codeInput | N11        |

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | alreadyExists | already exists |

  Scenario:(SP-6-TC-03)  Edit-Activate/Deactivate  a Subject Category

    And User sending the keys in Dialog Content
      | searchName | naturalScience |

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | HumanBiology |
      | codeInput | N110       |

    And Click on the element in Dialog
      | toggleBar |
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


  Scenario:(SP-6-TC-04)  Delete a Subject Category  Positive Scenario

    And User delete item from Dialog Content
      |  HumanBiology |

    Then Verify contains text
      | successMessage | successfully |

  Scenario:(SP-6-TC-05)  Delete a Subject Category  Negative Scenario


    And User sending the keys in Dialog Content
      | searchName |  HumanBiology |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text

      | verifyDelete | no data to display |













