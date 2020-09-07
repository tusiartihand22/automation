import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Registrasi {
    WebDriverWait wait = new WebDriverWait(driver,10);
    WebDriver driver = new ChromeDriver();
    public void pageRegistration(){
        driver.manage().window().maximize();
        driver.get("https://flip.id/signup");
        try {
            driver.findElement(By.className("signup-content container")).isDisplayed();
        }
        catch (NoSuchElementException e){
            throw new IllegalStateException("You are not in registration page");
        }
    }

    public void invalidRegistration(String name, String invalidMail){
        driver.manage().window().maximize();
        driver.get("https://flip.id/signup");
        driver.findElement(By.name("nama")).sendKeys(name);
        driver.findElement(By.name("email")).sendKeys(invalidMail);
        driver.findElement(By.className("mb-2 invalid-feedback")).isDisplayed();
    }

    public void validRegistration(String name, String validMail, String password, String phone){
        driver.manage().window().maximize();
        driver.get("https://flip.id/signup");
        driver.findElement(By.name("nama")).sendKeys(name);
        driver.findElement(By.name("email")).sendKeys(validMail);
        driver.findElement(By.name("password")).sendKeys(password);
        driver.findElement(By.name("no_hp")).sendKeys(phone);
        wait.until(ExpectedConditions.visibilityOf(By.className("card__body card-body")));
        String text = driver.findElement(By.className("sc-fvLVrH dQGErb")).getText();
        text.equals("Kode verifikasi akan kami kirim ke nomor berikut");
    }
}
