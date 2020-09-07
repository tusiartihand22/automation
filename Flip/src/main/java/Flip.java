public class Flip {
    public static void main(String[] args){
        System.setProperty("webdriver.chrome.driver", "/Users/tusiartihandayani/chromedriver");
        registFlow();
        loginFlow();
        fiturFlow();
        logoutFlow();
    }

    public static void loginFlow(){
        Login login = new Login();
        login.pageLoginValidation();
        login.invalidLogin("invalidaccount", "12345");
        login.validLogin("validaccount@gmail.com", "Valid12345");
    }

    public static void registFlow(){
        Registrasi registrasi = new Registrasi();
        registrasi.pageRegistration();
        registrasi.invalidRegistration("name", "invalidmail");
        registrasi.validRegistration("name", "validmail", "password12345", "08120000111");
    }

    public static void fiturFlow(){
        Fitur fitur = new Fitur();
        fitur.kirimUang();
        fitur.catatanTransaksi();
    }

    public static void logoutFlow(){
        Logout logout = new Logout();
        logout.signout();
    }
}