
package murach.data;
import javax.persistence.*;

import javax.persistence.EntityManager;
import murach.business.Users;


public class UsersDB {

    public static void insert(Users user) {
        
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();   
        } finally {
            em.close();
        }
    }

    public static void update(Users user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.merge(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void delete(Users user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.remove(em.merge(user));
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
    public static Users selectUser(String username, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT u FROM Users u " +
                "WHERE u.username = :username";
        TypedQuery<Users> q = em.createQuery(qString, Users.class);
        q.setParameter("username", username);
        try {
            Users user = q.getSingleResult();
            return user;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

//    public static boolean emailExists(String email) {
//        Users u = selectUser(email);   
//        return u != null;
//    }
}