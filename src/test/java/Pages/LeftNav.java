package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent{

    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy(xpath = "//span[@class='mat-tooltip-trigger logo-text']")
    private WebElement txtTechnoStudy;

    @FindBy(xpath = "//span[text()='Human Resources']")
    private WebElement humanResources;

    @FindBy(xpath = "(//span[text()='Setup'])[3]")
    private WebElement setupInHumanR;

    @FindBy(xpath = "//span[text()='Position Categories']")
    private WebElement positionCategories;

    @FindBy(xpath="//span[text()='Setup']")
    private WebElement setup;

    @FindBy(xpath="//span[text()='Parameters']")
    private WebElement parameters;

    @FindBy(xpath="//span[text()='Fields']")
    private WebElement fields;

    @FindBy(xpath="//span[text()='Departments']")
    private WebElement departments;

    @FindBy(xpath="//span[text()='Bank Accounts']")
    private WebElement bankAccount;

    @FindBy(xpath = "//span[text()='Positions']")
    private  WebElement positionsInHumanR;

    @FindBy(xpath="(//span[text()='Document Types'])[1]")
    private WebElement documentTypes;

    @FindBy(xpath="//span[text()='School Setup']")
    private WebElement schoolSetup;

    @FindBy(xpath = "//span[text()='Attestations']")
    private WebElement attestations;

    @FindBy(xpath = "(//span[text()='Locations'])[1]")
    private WebElement locations;

    @FindBy(xpath="//span[text()='Education']")
    private WebElement education;

    @FindBy(xpath="(//span[text()='Setup'])[5]")
    private WebElement setupEdu;

    @FindBy(xpath="//span[text()='Subject Categories']")
    private WebElement subjectCategories;

    @FindBy(xpath= "//span[text()='Nationalities']")
    private WebElement nationalities;

    @FindBy(xpath = "(//span[text()='Setup'])[1]")
    private  WebElement setupForGradeLevels;

    @FindBy(xpath = "//span[text()='Grade Levels']")
    private  WebElement gradeLevels;

    @FindBy(xpath = "//span[text()='Discounts']")
    private  WebElement discounts;







    public WebElement getWebElement(String strButton){

        switch (strButton){

             case "txtTechnoStudy": return txtTechnoStudy;
             case "humanResources": return humanResources;
             case "setupInHumanR": return setupInHumanR;
             case "positionCategories": return positionCategories;
             case "setup": return setup;
             case "parameters": return parameters;
             case "fields": return fields;
             case "departments": return departments;
             case "bankAccount": return bankAccount;
             case "positionsInHumanR": return  positionsInHumanR;
             case "documentTypes": return documentTypes;
             case "attestations": return attestations;
             case "schoolSetup": return schoolSetup;
             case "locations": return locations;
             case "education": return education;
             case "setupEdu": return setupEdu;
             case "subjectCategories": return subjectCategories;
             case "nationalities": return nationalities;
             case "setupForGradeLevels": return setupForGradeLevels;
             case "gradeLevels": return  gradeLevels;
             case "discounts": return  discounts;



        }

        return null;
    }


}
