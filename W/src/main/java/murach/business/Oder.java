package murach.business;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
//import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.*;

@Entity
@Table(name = "\"Order\"")
public class Oder implements Serializable {
    @Id
    @GeneratedValue(
        strategy = GenerationType.IDENTITY
    )
    private int orderID;
    private String customer;
    private String orderStatus;
    @OneToMany(
        cascade = {CascadeType.ALL}
    )
    private List<LineItems> items;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date orderDate;
    private Float totalMoney;
    private String methodPayment;
    

    public Oder() {
    }

    public Oder(int id , String customer, String orderStatus, Float totalMoney, Date date, String methodPayment) {
        this.orderID = id;
        this.customer=customer;
        this.orderStatus=orderStatus;
        this.orderDate = date;
        this.totalMoney = totalMoney;
        this.methodPayment = methodPayment;
        this.items = new ArrayList();
    }
    
    public String getCustomer() {
        return this.customer;
    }

    public void setCustomer(String id) {
        this.customer = id;
    }
    
    public String getOrderStatus() {
        return this.orderStatus;
    }

    public void setOrderStatus(String id) {
        this.orderStatus = id;
    }
    
                
    public int getId() {
        return this.orderID;
    }

    public void setId(int id) {
        this.orderID = id;
    }

    public List<LineItems> getCartLines() {
        return this.items;
    }

    public void setCartLines(List<LineItems> cartLines) {
        this.items = cartLines;
    }
    
    public Date getOrderDate() {
        return this.orderDate;
    }

    public void setOrderDate(Date id) {
        this.orderDate = id;
    }
    
    public Float getTotalMoney() {
        return this.totalMoney;
    }

    public void setTotalMoney(Float id) {
        this.totalMoney = id;
    }
    
    public String getMethodPayment() {
        return this.methodPayment;
    }

    public void setMethodPayment(String id) {
        this.methodPayment = id;
    }

    @Override
    public String toString() {
        int var10000 = this.orderID;
        return "Cart{accountID=" + var10000 + ", CartLines=" + String.valueOf(this.items) + "}";
    }
}