package TAL.model;



import javax.persistence.*;

@Entity
@Table(name="vehicule")
public class Vehicule {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idVehicule;

    private int idDepot;

    private String catégorie;
    private String marque ;
    private String modèle;
    private int matricule ;
    private String energie;
    private String boite;
    private int puissance;
    private String couleur;
    private double plj;
    private double plh;
    private double klm;
    private String etat;

    public int getIdVehicule() {
        return idVehicule;
    }

    public void setIdVehicule(int idVehicule) {
        this.idVehicule = idVehicule;
    }

    public int getIdDepot() {
        return idDepot;
    }

    public void setIdDepot(int idDepot) {
        this.idDepot = idDepot;
    }

    public String getCatégorie() {
        return catégorie;
    }

    public void setCatégorie(String catégorie) {
        this.catégorie = catégorie;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public String getModèle() {
        return modèle;
    }

    public void setModèle(String modèle) {
        this.modèle = modèle;
    }

    public int getMatricule() {
        return matricule;
    }

    public void setMatricule(int matricule) {
        this.matricule = matricule;
    }

    public String getEnergie() {
        return energie;
    }

    public void setEnergie(String energie) {
        this.energie = energie;
    }

    public String getBoite() {
        return boite;
    }

    public void setBoite(String boite) {
        this.boite = boite;
    }

    public int getPuissance() {
        return puissance;
    }

    public void setPuissance(int puissance) {
        this.puissance = puissance;
    }

    public String getCouleur() {
        return couleur;
    }

    public void setCouleur(String couleur) {
        this.couleur = couleur;
    }

    public double getPlj() {
        return plj;
    }

    public void setPlj(double plj) {
        this.plj = plj;
    }

    public double getPlh() {
        return plh;
    }

    public void setPlh(double plh) {
        this.plh = plh;
    }

    public double getKlm() {
        return klm;
    }

    public void setKlm(double klm) {
        this.klm = klm;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }
}
