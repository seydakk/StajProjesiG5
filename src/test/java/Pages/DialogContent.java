package Pages;

import Utilities.GWD;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.List;

public class DialogContent extends Parent{

    public DialogContent() {
        PageFactory.initElements(GWD.getDriver(),this);
    }


    @FindBy(xpath= "//input[@formcontrolname='username']")
    private WebElement usernameLogin;

    @FindBy(xpath= "//input[@formcontrolname='password']")
    private WebElement passwordLogin;

    @FindBy(xpath= "//button[@aria-label='LOGIN']")
    private WebElement loginButton;

    @FindBy(xpath = "//mat-form-field//input[@data-placeholder='Name']")
    private WebElement searchName;

    @FindBy(xpath= "//ms-add-button[contains(@tooltip,'ADD')]//button")
    private WebElement addButton;

    @FindBy(xpath= "//button[@type='submit']")
    private WebElement deleteDialogBtn;

    @FindBy(xpath= "(//ms-delete-button//button)[1]")
    private WebElement deleteButton;

    @FindBy(xpath= "//ms-search-button//button")
    private WebElement searchButton;

    @FindBy(xpath= "(//ms-edit-button//button)[1]")
    private WebElement editButton;

    @FindBy(xpath= "(//mat-form-field//input)[2]")
    private WebElement searchCode;

    @FindBy(xpath= "//ms-save-button//button")
    private WebElement saveButton;

    @FindBy(xpath= "//*[contains(text(),'successfully')]")
    private WebElement successMessage;

    @FindBy(xpath= "//ms-text-field[@formcontrolname='name']//input")
    private WebElement nameInput;

    @FindBy(xpath= "//ms-text-field[@formcontrolname='code']//input")
    private WebElement codeInput;

    @FindBy(xpath= "//mat-select[@formcontrolname='type']")
    private WebElement selectFieldType;

    @FindBy(xpath= "//*[contains(text(),'already exists')]")
    private WebElement alreadyExists;

    @FindBy(xpath= "//ms-table//td/div[contains(text(),'no data to display')]")
    private WebElement verifyDelete;

    @FindBy(xpath= "(//div[contains(@class,'mat-select-arrow-wrapper')])[2]")
    private WebElement selectarrow;

    @FindBy(xpath= "//span[text()=' Logical ']")
    private WebElement logical;

    @FindBy(xpath= "//ms-integer-field[@placeholder='GENERAL.FIELD.CAPACITY']//input")
    private WebElement capacity;

    @FindBy(xpath= "(//mat-form-field)[1]")
    private WebElement searchBox;

    @FindBy(xpath= "//ms-text-field/input[@data-placeholder='IBAN']")
    private WebElement iban;

    @FindBy(xpath= "//ms-text-field[@formcontrolname='integrationCode']/input")
    private WebElement integrationCode;

    @FindBy(xpath= "//mat-select[@formcontrolname='currency']")
    private WebElement currency;

    @FindBy(xpath= "//span[text()=' TRY ']")
    private WebElement tryInCurrency;

    @FindBy(xpath= "//span[text()=' USD ']")
    private WebElement usdInCurrency;

    @FindBy(xpath = "(//input[@data-placeholder='Short Name'])[2]")
    private  WebElement shortName;

    @FindBy(xpath = "//ms-text-field[@placeholder='GENERAL.FIELD.NAME']//input")
    private WebElement searchNameInHumanR;

    @FindBy(xpath = "//ms-text-field[@placeholder='GENERAL.FIELD.SHORTNAME']//input")
    private  WebElement searchShortNameInHumanR;

    @FindBy(xpath= "(//div[contains(@class,'mat-select-arrow-wrapper')])[1]")
    private WebElement selectStageEditDoc;

    @FindBy(xpath= "(//div[contains(@class,'mat-select-arrow-wrapper')])[3]")
    private WebElement selectStageNewDoc;

    @FindBy(xpath= "//span[text()=' Employment ']")
    private WebElement employment;

    @FindBy(xpath= "//td[text()='group5testing']/following-sibling::td[3]//ms-edit-button")
    private WebElement group5testingEditBtn;

    @FindBy(xpath= "//td[@role='cell']")
    private List<WebElement> resultlist;
    //td[text()='group5testing']/following-sibling::td[3]//ms-edit-button

    @FindBy(xpath= "//td[contains(@class,'cdk-column-name')]")
    private List<WebElement> nameresultlist;

    @FindBy(xpath= "//td[contains(@class,'cdk-column-code')]")
    private List<WebElement> coderesultlist;

    @FindBy(xpath= "//td[contains(@class,'cdk-column-buttons')]//ms-edit-button")
    private List<WebElement> editbuttonlist;

    @FindBy(xpath= "//td[contains(@class,'cdk-column-buttons')]//ms-delete-button")
    private List<WebElement> deletebuttonlist;

    @FindBy(xpath= "(//ms-text-field[@placeholder='GENERAL.FIELD.SHORTNAME'])//input")
    private WebElement locationShortName;

    @FindBy(xpath="//mat-slide-toggle[@formcontrolname='active']")
    private WebElement toggleBar;

    @FindBy(xpath= "//td[contains(text(),'group5test')]//following::div/ms-edit-button")
    private WebElement manualEditButton;

    @FindBy(xpath= "//td[contains(text(),'group5test')]//following::div/ms-delete-button")
    private WebElement manualDeleteButton;

    @FindBy(xpath= "//td[contains(text(),'group5test')]")
    private List<WebElement> deletedList;

    @FindBy(xpath= "//*[contains(text(),'already Department')]")
    private WebElement alreadyDepartmentExists;

    @FindBy(xpath = "//ms-text-field[@formcontrolname='shortName']//input")
    private  WebElement newGradeShortName;

    @FindBy(xpath = "//ms-text-field[@formcontrolname='order']//input")
    private  WebElement newGradeOrder;

    @FindBy(xpath= "//td[contains(text(),'name10')]//following::div/ms-edit-button")
    private WebElement manualEditButtonForLocation;

    @FindBy(xpath= "//td[contains(text(),'name11')]//following::div/ms-delete-button")
    private WebElement manualDeleteButtonForLocation;

    @FindBy(xpath= "//td[contains(text(),'name10')]")
    private List<WebElement> deletedListForLocation;

    @FindBy(xpath= "//*[contains(text(),'already exists')]")
    private WebElement locationAlreadyExist;

    @FindBy(xpath= "(//*[@data-placeholder='Description'])[2]")
    private WebElement descriptionInput;

    @FindBy(xpath= "(//*[@data-placeholder='Integration Code'])[2]")
    private WebElement integrationCodeInputDis;

    @FindBy(xpath= "//*[@data-placeholder='Priority']")
    private WebElement priorityDis;

    @FindBy(xpath= "//mat-error[text()=' This field cannot be left blank!']")
    private WebElement requiredField;

    @FindBy(xpath= "(//*[@data-placeholder='Description'])[1]")
    private WebElement descriptionSearch;

    @FindBy(xpath= "(//*[@data-placeholder='Integration Code'])[1]")
    private WebElement integrationSearch;















    public void deleteItem(String searchText){

        sendKeysFunction(searchName, searchText);
        clickFunction(searchButton);
        //beklet
        // StaleElementReferenceException hatası veriyor. bayatlayan element
        //wait.until(ExpectedConditions.elementToBeClickable(searchButton));
        // clickable olarakta bekletilebilir ama asıl tercih edilen burada aşağıdaki;

        // fuse-progress-bar/* : bu 0 olana kadar beklet
        wait.until(ExpectedConditions.numberOfElementsToBe(By.xpath("//fuse-progress-bar/*"),0));
        clickFunction(deleteButton);
        clickFunction(deleteDialogBtn);
      //  verifyContainsTextFunction(successMessage, "successfully");

    }

    public WebElement getWebElement(String strButton){

        switch (strButton){

             case "usernameLogin": return usernameLogin;
             case "passwordLogin": return passwordLogin;
             case "loginButton": return loginButton;
             case "searchName": return searchName;
             case "addButton": return addButton;
             case "deleteButton": return deleteButton;
             case "deleteDialogBtn": return deleteDialogBtn;
             case "searchButton": return searchButton;
             case "editButton": return editButton;
             case "searchCode": return searchCode;
             case "saveButton": return saveButton;
             case "successMessage": return successMessage;
             case "nameInput": return nameInput;
             case "codeInput": return codeInput;
             case "selectFieldType": return selectFieldType;
             case "alreadyExists": return alreadyExists;
             case "verifyDelete": return verifyDelete;
             case "logical": return logical;
             case "selectarrow": return selectarrow;
             case "searchBox": return searchBox;
             case "iban": return iban;
             case "integrationCode": return integrationCode;
             case "currency": return currency;
             case "tryInCurrency": return tryInCurrency;
             case "usdInCurrency": return usdInCurrency;
             case "shortName": return shortName;
             case "searchNameInHumanR":return searchNameInHumanR;
             case "searchShortNameInHumanR": return searchShortNameInHumanR;
             case "selectStageNewDoc": return selectStageNewDoc;
             case "employment": return employment;
             case "selectStageEditDoc": return selectStageEditDoc;
             case "group5testingEditBtn": return group5testingEditBtn;
             case "capacity": return capacity;
             case "toggleBar": return toggleBar;
             case "locationShortName": return locationShortName;
             case "manualEditButton": return manualEditButton;
             case "manualDeleteButton": return manualDeleteButton;
             case "alreadyDepartmentExists": return alreadyDepartmentExists;
             case "newGradeShortName": return newGradeShortName;
             case "newGradeOrder": return newGradeOrder;
             case "manualEditButtonForLocation": return manualEditButtonForLocation;
             case "manualDeleteButtonForLocation": return manualDeleteButtonForLocation;
             case "locationAlreadyExist": return locationAlreadyExist;
             case "descriptionInput": return descriptionInput;
             case "integrationCodeInputDis": return integrationCodeInputDis;
             case "priorityDis": return priorityDis;
             case "requiredField": return requiredField;
             case "descriptionSearch": return descriptionSearch;
             case "integrationSearch": return integrationSearch;

        }

        return null;
    }

    public List<WebElement> getWebElementlist(String strList) {

        switch (strList) {
            case "resultlist": return resultlist;
            case "nameresultlist": return nameresultlist;
            case "coderesultlist": return coderesultlist;
            case "editbuttonlist": return editbuttonlist;
            case "deletebuttonlist": return deletebuttonlist;
            case "deletedList": return deletedList;

        }
        return null;
    }

}
