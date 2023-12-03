/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import murach.business.Product;

/**
 *
 * @author Huynh Hop
 */
public class ProductDB {
    public static List<Product> getAllProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT u FROM Product u";// ORDER BY u.productid ASC ";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);

        try {
            List<Product> productList = q.getResultList();
            return productList;
        } finally {
            em.close();
        }
    }
}
