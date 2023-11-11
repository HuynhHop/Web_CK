package murach.business;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "\"Users\"")
public class Users implements Serializable {
    private String userId;

    public Users() {
    }
    public Users(String username, String password, String phonenumber, String address, String a) {
        this.username = username;
        this.password = password;
        this.phonenumber = phonenumber;
        this.address = address;
        this.roless=a;
    }
    private String username;
    private String password;
    private String phonenumber;
    private String address;
    private String roless;
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getRoless() {
        return roless;
    }

    public void setRoless(String roless) {
        this.roless = roless;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    
}