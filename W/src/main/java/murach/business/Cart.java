package murach.business;

import java.io.Serializable;
import java.util.ArrayList;
//import java.util.Date;
import java.util.List;
//import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.*;

@Entity
@Table(name = "\"Cart\"")
public class Cart implements Serializable {
    @Id
    @GeneratedValue(
        strategy = GenerationType.IDENTITY
    )
    private int orderID;
    private int customer;
    @OneToMany(
        cascade = {CascadeType.ALL}
    )
    private List<LineItems> itemsCart;
//    @Temporal(javax.persistence.TemporalType.DATE)
    private Float totalMoney;    

    public Cart() {
    }

    public Cart(int id , int customer, Float totalMoney) {
        this.orderID = id;
        this.customer=customer;
        this.totalMoney = totalMoney;
        this.itemsCart = new ArrayList();
    }
    
    public int getCustomer() {
        return this.customer;
    }

    public void setCustomer(int id) {
        this.customer = id;
    }
    
                
    public int getId() {
        return this.orderID;
    }

    public void setId(int id) {
        this.orderID = id;
    }

    public List<LineItems> getItemsCart() {
        return this.itemsCart;
    }

    public void setItemsCart(List<LineItems> cartLines) {
        this.itemsCart = cartLines;
    }
    
    public Float getTotalMoney() {
        return this.totalMoney;
    }

    public void setTotalMoney(Float id) {
        this.totalMoney = id;
    }


    @Override
    public String toString() {
        int var10000 = this.orderID;
        return "Cart{accountID=" + var10000 + ", CartLines=" + String.valueOf(this.itemsCart) + "}";
    }
}