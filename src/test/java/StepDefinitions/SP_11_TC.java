package StepDefinitions;

import Pages.DialogContent;
import Utilities.GWD;
import io.cucumber.java.en.And;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class SP_11_TC {
    WebDriverWait wait = new WebDriverWait(GWD.getDriver(), Duration.ofSeconds(10));
    DialogContent dc = new DialogContent();
    Actions aksiyonlar = new Actions(GWD.getDriver());

    @And("Send the TAB signal")
    public void SendtheTABsignal() {

        aksiyonlar.keyDown(Keys.TAB).keyUp(Keys.TAB).build().perform();
    }
}
