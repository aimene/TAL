package TAL.model;



import javax.persistence.*;

@Entity
@Table(name="vehicule")
public class Vehicule {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idVehicule;



    @ManyToOne
    @JoinColumn(name = "idDepot")
    private Depot idDepotV;

    private String catégorie;
    private String marque ;
    private String modèle;
    private String matricule ;
    private String energie;
    private String boite;
    private String puissance;
    private String couleur;
    private double plj;
    private double plh;
    private double klm;
    private String etat;
    private  String imagepath;

    public Depot getIdDepot() {
        return idDepotV;
    }

    public void setIdDepot(Depot idDepotV) {
        this.idDepotV = idDepotV;
    }

    public int getIdVehicule() {
        return idVehicule;
    }

    public void setIdVehicule(int idVehicule) {
        this.idVehicule = idVehicule;
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

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
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

    public String getPuissance() {
        return puissance;
    }

    public void setPuissance(String puissance) {
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

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }
}
