package TAL.model;

import javax.persistence.*;

@Entity
@Table(name="depot")
public class Depot {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idDepot ;

    private String capacite;

    private String adresse;

    public int getIdDepot() {
        return idDepot;
    }

    public void setIdDepot(int idDepot) {
        this.idDepot = idDepot;
    }

    public String getCapacite() {
        return capacite;
    }

    public void setCapacite(String capacite) {
        this.capacite = capacite;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
}
