Feature: As an Admin User I should be able to Add-Edit-Delete Attestations Under Human Resources Setup

  Background:

    Given  I log in as an Admin

    When Click on the element in LeftNav

      | humanResources |
      | setupInHumanR  |
      | attestations   |

  Scenario: (SP-2-TC-01) Check Add attestations - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Techno SDET|

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |

  Scenario: (SP-2-TC-02) Check Add attestations with same data - Negative Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Techno SDET|

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | alreadyExists | already exists |

  Scenario: (SP-2-TC-03) Check Edit the position category - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | Techno SDET|

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | Techno |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-2-TC-04) Check Delete the attestations - Positive Scenario

    And User delete item from Dialog Content
      | Techno |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-2-TC-05) Check Delete attestations already deleted - Negative Scenario

    And User sending the keys in Dialog Content
      | searchName | Techno |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |




