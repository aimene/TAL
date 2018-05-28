package TAL.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="location")
public class Location {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idLocation;

    private int idLocataire;
    private int idVehicule;
    private Date dateD ;
    private Date  dateR ;
    private String heureD ;

    private String nbrH ;
    private Double kmD;
    private double kmR;
    private String type ;
    private String etat ;

    public void setIdLocation(int idLocation) {
        this.idLocation = idLocation;
    }

    public void setIdLocataire(int idLocataire) {
        this.idLocataire = idLocataire;
    }

    public void setIdVehicule(int idVehicule) {
        this.idVehicule = idVehicule;
    }

    public void setDateD(Date dateD) {
        this.dateD = dateD;
    }

    public void setDateR(Date dateR) {
        this.dateR = dateR;
    }

    public void setHeureD(String heureD) {
        this.heureD = heureD;
    }

    public void setNbrH(String nbrH) {
        this.nbrH = nbrH;
    }

    public void setKmD(Double kmD) {
        this.kmD = kmD;
    }

    public void setKmR(double kmR) {
        this.kmR = kmR;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    public int getIdLocation() {
        return idLocation;
    }

    public int getIdLocataire() {
        return idLocataire;
    }

    public int getIdVehicule() {
        return idVehicule;
    }

    public Date getDateD() {
        return dateD;
    }

    public Date getDateR() {
        return dateR;
    }

    public String getHeureD() {
        return heureD;
    }


    public String getNbrH() {
        return nbrH;
    }




    public Double getKmD() {
        return kmD;
    }

    public double getKmR() {
        return kmR;
    }

    public String getType() {
        return type;
    }

    public String getEtat() {
        return etat;
    }


}
