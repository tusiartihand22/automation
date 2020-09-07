import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Fitur {
    WebDriver driver = new ChromeDriver();
    public void kirimUang(){
        //Login login = new Login();
        //login.validLogin("validusername", "validpassword");
        driver.findElement(By.className("sc-hmzhuo buyGzR")).click();
        driver.findElement(By.className("button button--white button--nav button-desktop-only mx-3 my-auto nav-item")).click();
        try {
            driver.findElement(By.className("modal-content")).isDisplayed();
        }
        catch (NoSuchElementException e){
            throw new IllegalStateException("Check your logged in account");
        }
    }

    public void catatanTransaksi(){
        //Login login = new Login();
        //login.validLogin("validusername", "validpassword");
        driver.findElement(By.className("sc-hmzhuo buyGzR")).click();
        driver.findElement(By.className("mx-3 my-auto nav-item--top-bordered nav-item")).click();
        try {
            driver.findElement(By.className("content__title undefined")).isDisplayed();
        }
        catch (NoSuchElementException e){
            throw new IllegalStateException("Check your internet connection");
        }
    }
}
