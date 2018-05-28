package TAL.model;


import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="feedback")
public class Feedback {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idFeed;

    @NotNull
    private String nomprenom;

    @NotNull
    @Email
    private String email;

    @NotNull
    private String message;

    public int getIdFeed() {
        return idFeed;
    }

    public void setIdFeed(int idFeed) {
        this.idFeed = idFeed;
    }

    public String getNomprenom() {
        return nomprenom;
    }

    public void setNomprenom(String nomprenom) {
        this.nomprenom = nomprenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


}
