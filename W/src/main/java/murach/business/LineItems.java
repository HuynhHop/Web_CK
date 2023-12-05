package murach.business;

import java.io.Serializable;
//import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "\"LineItems\"")
public class LineItems implements Serializable {
    @Id
    private int idlineitems;

    public int getIdlineitems() {
        return idlineitems;
    }

    public void setIdlineitems(int idlineitems) {
        this.idlineitems = idlineitems;
    }
    private int product;

    public LineItems() {
    }
    public LineItems(int productName) {
        this.quantity = productName;
    }
    private int quantity;
//    @Temporal(javax.persistence.TemporalType.DATE)
//    @Temporal(javax.persistence.TemporalType.DATE)
//    private Date expirationDate;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

//    public Date getExpirationDate() {
//        return expirationDate;
//    }
//    public void setExpirationDate(Date expirationDate) {
//        this.expirationDate = expirationDate;
//    }
    
    public int getProduct() {
        return product;
    }
    public void setProduct(int product) {
        this.product = product;
    }
    
}