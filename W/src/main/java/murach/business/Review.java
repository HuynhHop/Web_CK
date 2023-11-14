package murach.business;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "\"Review\"")
public class Review implements Serializable {
    private int reviewId;
    private String userr;

    public Review() {
    }
    public Review(String userr, int rating, String feedback) {
        this.userr = userr;
        this.rating = rating;
        this.feedback=feedback;
    }
    private int rating;
    private String feedback;
    
    public String getUserr() {
        return userr;
    }

    public void setUserr(String username) {
        this.userr = username;
    }
    
    public int getrating() {
        return rating;
    }

    public void setrating(int rating) {
        this.rating = rating;
    }
    
    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getReviewId() {
        return reviewId;
    }
    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }
    
}