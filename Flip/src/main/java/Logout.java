import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Logout {
    WebDriver driver = new ChromeDriver();
    public void signout(){
        driver.findElement(By.className("dropdown-toggle nav-link")).click();
        driver.findElement(By.className("fa fa-sign-out-alt")).click();
        Boolean logout = driver.getCurrentUrl().equals("hhttps://flip.id/login");
        if (logout = true)
            System.out.println("Success logout");
        else
            System.out.println("Logout failed");
    }
}
