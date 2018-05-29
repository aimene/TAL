package TAL.service;


import TAL.Repository.RequetesDepot;
import TAL.Repository.RequetesLocataire;
import TAL.Repository.RequetesUtilisateur;
import TAL.Repository.RequetesVehicule;
import TAL.model.Depot;
import TAL.model.Locataire;
import TAL.model.Utilisateur;
import TAL.model.Vehicule;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

@Service
public class BackService {
    @Autowired
    RequetesUtilisateur requetesUtilisateur;

    @Autowired
    RequetesVehicule requetesVehicule;

    @Autowired
    RequetesLocataire requetesLocataire;

    @Autowired
    RequetesDepot requetesDepot;


    // Utilisateur
    public Utilisateur AjouterUtilisateur(Utilisateur u){
        return requetesUtilisateur.save(u);
    }

    public Utilisateur GetUtilisateurById(int id){
        return requetesUtilisateur.getOne(id);
    }

    public ArrayList<Utilisateur> getGestionAgenceList(){
        return requetesUtilisateur.gestionnaireagence();
    }

    public ArrayList<Utilisateur> getGestionDepotList(){
        return requetesUtilisateur.gestionnairedépot();
    }

    // Vehicule

    public Vehicule AjouterVéhicule(Vehicule v){
        return requetesVehicule.save(v);
    }

    public ArrayList<Vehicule> ListeDesVehicules(){
        return (ArrayList<Vehicule>) requetesVehicule.findAll();
    }

    public ArrayList<Vehicule> getListVoiture(){
        return  requetesVehicule.ListVoiture();
    }
    public ArrayList<Vehicule> getListBus(){
        return  requetesVehicule.ListBus();
    }
    public ArrayList<Vehicule> getListMoto(){
        return  requetesVehicule.ListMoto();
    }


    // vehicule image store
    Logger log = LoggerFactory.getLogger(this.getClass().getName());

    // Locataire
    public Locataire getLocataire(int id ){
        return requetesLocataire.getOne(id) ;
    }
    public ArrayList<Locataire> getAllLocataire(){
        return (ArrayList<Locataire>) requetesLocataire.findAll() ;
    }
    public ArrayList<Locataire> getLocatairebloqué(){
        return  requetesLocataire.locataireBloqué();
    }
    public Locataire AjouterLocataire(Locataire l){
        return requetesLocataire.save(l);
    }


    //vehicule
    public void SupprimerVehicule(int id){
        requetesVehicule.deleteById(id);

    }
    public Vehicule GetVehicule(int id){
        return  requetesVehicule.getOne(id);

    }
    public ArrayList<Vehicule> GetVehiculeList(){
        return (ArrayList<Vehicule>) requetesVehicule.findAll();

    }
    public Vehicule GetVehiculeByMatricule(String mat){
        return  requetesVehicule.matriculeexist(mat);

    }
    public Vehicule modifierVehicule(Vehicule v){

        Vehicule l= requetesVehicule.getOne(v.getIdVehicule());
        l.setImagepath(v.getImagepath());
        l.setPlh(v.getPlh());l.setPlj(v.getPlj());l.setModèle(v.getModèle());l.setMarque(v.getMarque());l.setKlm(l.getKlm());
        l.setEtat(v.getEtat());l.setEnergie(v.getEnergie());l.setCouleur(v.getCouleur());l.setCatégorie(v.getCatégorie());
        l.setBoite(v.getBoite());l.setMatricule(v.getMatricule());l.setPuissance(v.getPuissance());



        return requetesVehicule.save(l) ;

    }
    public boolean TestMatricule(String mat){
        Vehicule l =requetesVehicule.matriculeexist(mat);
        if(l!=null){
            return true;
        }else{
            return false;
        }
    }




    // Utilisateur
    public Utilisateur getUtilisateurByPseudo(String pseudo){
        Utilisateur u = requetesUtilisateur.getUtilisateurByPseudo(pseudo);
       return u ;
    }
    public Utilisateur getUtilisateurByEmail(String email){
        Utilisateur u = requetesUtilisateur.getUtilisateurByPseudo(email);
        return u ;
    }

    //       Depot

    public Depot ajouterDépot (Depot d){
        return requetesDepot.save(d);
    }

    public ArrayList<Depot> GetDépotsList(){
        return (ArrayList<Depot>) requetesDepot.findAll();
    }

    public ArrayList<Depot> getDépotRestCapacité(){
        return requetesDepot.getDépotRestCapacité();
    }



    //Depot

    public ArrayList<Depot> ListeDesDepot(){
        return (ArrayList<Depot>)requetesDepot.findAll();
    }
    public Depot getDepotById(int idDepot){
        return requetesDepot.getOne(idDepot);
    }
    public void supprimerDepot(Depot depot){
        requetesDepot.delete(depot);
    }

    public ArrayList<Vehicule> ListeDesVehiculesDepot(int id){
        return requetesVehicule.ListesVehiculesDepots( id);
    }


}