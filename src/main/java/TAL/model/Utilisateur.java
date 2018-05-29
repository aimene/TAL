package TAL.model;



import javax.persistence.*;

@Entity
@Table(name="utilisateur")
public class Utilisateur {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    public int  idUtilisateur;


    @ManyToOne
    @JoinColumn(name = "idDepot")
    private Depot idDepot;

    private String nom ;
    private String prenom;
    private String type ;
    private String motdepasse;
    private String pseudo ;
    private String email;


    public Depot getIdDepot() {
        return idDepot;
    }

    public void setIdDepot(Depot idDepot) {
        this.idDepot = idDepot;
    }


    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    private String etat;


    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getType() {
        return type;
    }

    public String getMotdepasse() {
        return motdepasse;
    }

    public String getPseudo() {
        return pseudo;
    }

    public String getEmail() {
        return email;
    }


    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setMotdepasse(String motdepasse) {
        this.motdepasse = motdepasse;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
