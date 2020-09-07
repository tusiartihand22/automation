import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Login {
    WebDriverWait wait = new WebDriverWait(driver,10);
    WebDriver driver = new ChromeDriver();
    public void pageLoginValidation(){
        driver.manage().window().maximize();
        driver.get("https://flip.id/login");
        try {
            driver.findElement(By.className("login container")).isDisplayed();
        }
        catch (NoSuchElementException e){
            throw new IllegalStateException("You are not in login page");
        }
    }

    public void validLogin(String username, String password){
        driver.manage().window().maximize();
        driver.get("https://flip.id/login");
        wait.until(ExpectedConditions.visibilityOf(By.className("login container")));
        driver.findElement(By.name("email")).sendKeys(username);
        driver.findElement(By.name("password")).sendKeys(password);
        driver.findElement(By.xpath("//*[@id=\"app\"]/div/div/div/div/div/div[2]/div/div/form/button")).click();
        try {
            driver.findElement(By.className("sc-kGXeez iATHsl container")).isDisplayed();
        }
        catch (NoSuchElementException e){
            throw new IllegalStateException("Wrong redirect page");
        }
    }

    public void invalidLogin(String invalidUsername, String invalidPassword){
        driver.manage().window().maximize();
        driver.get("https://flip.id/login");
        wait.until(ExpectedConditions.visibilityOf(By.className("login container")));
        driver.findElement(By.name("email")).sendKeys(invalidUsername);
        driver.findElement(By.name("password")).sendKeys(invalidPassword);
        driver.findElement(By.xpath("//*[@id=\"app\"]/div/div/div/div/div/div[2]/div/div/form/button")).click();
        wait.until(ExpectedConditions.visibilityOf(By.className("alert alert-danger")));
    }
}
