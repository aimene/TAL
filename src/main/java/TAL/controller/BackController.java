package TAL.controller;

import TAL.model.Depot;
import TAL.storage.StorageFileNotFoundException;
import TAL.storage.StorageService;
import TAL.model.Locataire;
import TAL.model.Utilisateur;
import TAL.model.Vehicule;
import TAL.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class BackController {

    @Autowired
    BackService serviceAdministrateur;


    @Autowired
    private HttpServletRequest request;
    @Autowired
    private final StorageService storageService;


    public BackController(StorageService storageService) {
        this.storageService = storageService;
    }

    @RequestMapping(value="/connexion",method= RequestMethod.GET)
    public String authentification()
    {
        return"Back/connexion";
    }


    @RequestMapping(value="/espaceGestAgence",method= RequestMethod.GET)
    public String espaceGestAgence()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u.equals(null)){
            return "Back/connexion";
        }else{
            if (u.getType().equals("agence")){
                return "Back/espaceGestAgence";
            }else{
                return "Back/connexion";
            }
        }


    }

    @RequestMapping(value="/espaceGestDépot",method= RequestMethod.GET)
    public String espaceGestDépot()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u.equals(null)){
            return "Back/connexion";
        }else{
            if (u.getType().equals("depot")){
                return "Back/espaceGestDépot";
            }else{
        return "Back/connexion";
              }
        }

    }

    @RequestMapping(value="/espaceadmin",method= RequestMethod.GET)
    public String espaceadmin()
    {
        return"Back/espaceadmin";
    }

    @RequestMapping(value="/gérervéhicules",method= RequestMethod.GET)
    public String gérervéhicules()
    {
        return"Back/administrateur/véhicule/gérervéhicules";
    }


    @RequestMapping(value="/gérercomptesgestionnaires",method= RequestMethod.GET)
    public String gérercomptesgestionnaires()
    {
        return"Back/administrateur/gestionnaire/gérercomptesgestionnaires";
    }

    @RequestMapping(value="/gérercompteslocataires",method= RequestMethod.GET)
    public String gérercompteslocataires()
    {
        return"Back/administrateur/locataire/gérercompteslocataires";
    }







    @RequestMapping(value="/seconnecter",method= RequestMethod.POST)
    public String login (@RequestParam("pseudo") String pseudo, @RequestParam("motdepasse") String motdepasse)
    {
        HttpSession session =request.getSession();
        Utilisateur u =serviceAdministrateur.getUtilisateurByPseudo(pseudo);
            if (u.equals(null)){
                request.setAttribute("succes","compteinexistant");
            }else{
                if (u.getPseudo().equals(pseudo)&&u.getMotdepasse().equals(motdepasse)){
                    request.setAttribute("succes","correct");
                    session.setAttribute( "utilisateur",u);
                    if (u.getType().equals("depot")){
                        return "Back/espaceGestDépot";
                    }else{
                        if (u.getType().equals("agence")){
                            return "Back/espaceGestAgence";
                        }else{
                            return "Back/espaceadmin";
                        }
                    }
                }else{
                    request.setAttribute("succes","incorrect");

                }

            }




        return  "";
    }

    @RequestMapping(value="/backend/ajoutergestionnaire",method= RequestMethod.POST)
    public String bloquerlocataire (@RequestParam("nom") String  nom,@RequestParam("prenom")
            String prenom,@RequestParam("pseudo") String pseudo,@RequestParam("motdepasse") String motdepasse
            ,@RequestParam("type") String type,@RequestParam("email") String email)
    {

        Utilisateur u =new Utilisateur();
        u.setNom(nom);
        u.setPrenom(prenom);
        u.setEmail(email);
        u.setPseudo(pseudo);
        u.setMotdepasse(motdepasse);
        u.setEtat("approuvé");
        u.setType(type);
        System.out.println("aaa"+type);
        serviceAdministrateur.AjouterUtilisateur(u);


        if (type.equals("dépot")){
            ArrayList<Utilisateur> l = serviceAdministrateur.getGestionDepotList();
            request.setAttribute("listGest",l);
            return"Back/administrateur/gestionnaire/tablegestionnairesdépot";

        }else{
            ArrayList<Utilisateur> l = serviceAdministrateur.getGestionAgenceList();
            request.setAttribute("listGestA",l);
            return"Back/administrateur/gestionnaire/tablegestionnairesagence";
        }


    }

    @RequestMapping(value="/backend/listgestionnairesagence",method= RequestMethod.GET)
    public String getGestionnairesAgence (){

        ArrayList<Utilisateur> l = serviceAdministrateur.getGestionAgenceList();
        request.setAttribute("listGestA",l);
        return"Back/administrateur/gestionnaire/tablegestionnairesagence";
    }

    @RequestMapping(value="/backend/listgestionnairesdépot",method= RequestMethod.GET)
    public String getGestionnairesDépot ()
    {

        ArrayList<Utilisateur> l = serviceAdministrateur.getGestionDepotList();
        request.setAttribute("listGest",l);
        return"Back/administrateur/gestionnaire/tablegestionnairesdépot";
    }

    @RequestMapping(value="/backend/bloquerGestionnaireAgence",method= RequestMethod.GET)
    public String bloquerGestionnaireAgence (@RequestParam("id") int id)
    {    System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("bloqué");
        serviceAdministrateur.AjouterUtilisateur(l);

        request.setAttribute("listGestA",serviceAdministrateur.getGestionAgenceList());
        return "Back/administrateur/gestionnaire/tablegestionnairesagence";





    }

    @RequestMapping(value="/backend/débloquerGestionnaireAgence",method= RequestMethod.GET)
    public String débloquerGestionnaireAgence (@RequestParam("id") int id)
    {    System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("approuvé");
        serviceAdministrateur.AjouterUtilisateur(l);


        request.setAttribute("listGestA",serviceAdministrateur.getGestionAgenceList());
        return "Back/administrateur/gestionnaire/tablegestionnairesagence";


    }
    @RequestMapping(value="/backend/bloquerGestionnaireDépot",method= RequestMethod.GET)
    public String bloquerGestionnaireDépot (@RequestParam("id") int id)
    {    System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("bloqué");
        serviceAdministrateur.AjouterUtilisateur(l);

        request.setAttribute("listGest",serviceAdministrateur.getGestionDepotList());
        return "Back/administrateur/gestionnaire/tablegestionnairesdépot";





    }

    @RequestMapping(value="/backend/débloquerGestionnaireDépot",method= RequestMethod.GET)
    public String débloquerGestionnaireDépot (@RequestParam("id") int id) {    System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("approuvé");
        serviceAdministrateur.AjouterUtilisateur(l);


        request.setAttribute("listGest",serviceAdministrateur.getGestionDepotList());
        return "Back/administrateur/gestionnaire/tablegestionnairesdépot";


    }

    // GESTION DES VEHICULES
    //
    @RequestMapping(value = "/ajoutervehicule",headers=("content-type=multipart/*"),method =RequestMethod.POST)
    public String ajoutervehicule(@RequestParam("file") MultipartFile file, @ModelAttribute("vehicule") Vehicule vr) {

        if (!vr.getMatricule().equals("")){
            boolean b =serviceAdministrateur.TestMatricule(vr.getMatricule());
            if (!b){
                ArrayList<Vehicule> list = new ArrayList<>();
                vr.setImagepath("imagevehicule/"+file.getOriginalFilename());

                list.add(vr);
                storageService.store(file);
                serviceAdministrateur.AjouterVéhicule(vr);
                testCatégorie(vr);
                request.setAttribute("success",true);
                request.setAttribute("v",list);
            }else{
                request.setAttribute("success",false);
            }
        }

        return "Back/administrateur/véhicule/gérervéhicules";
    }

    @RequestMapping(value = "/modifiervehicule",headers=("content-type=multipart/*"),method =RequestMethod.POST)
    public String modifiervehicule(@RequestParam("file") MultipartFile file, @ModelAttribute("vehicule") Vehicule vr) {
        if (!vr.getMatricule().equals("")) {



            vr.setImagepath("imagevehicule/"+file.getOriginalFilename());
            serviceAdministrateur.modifierVehicule(vr);
            testCatégorie(vr);
            storageService.store(file);



        }
        return "Back/administrateur/véhicule/gérervéhicules";
    }
    @RequestMapping(value = "/supprimervehicule",method =RequestMethod.POST)
    public String supprimervehicule(@RequestParam("idsupprimer") int id) {

           Vehicule v = serviceAdministrateur.GetVehicule(id);
           testCatégorie(v);

         serviceAdministrateur.SupprimerVehicule(id);

        return "Back/administrateur/véhicule/gérervéhicules";
    }

    public void testCatégorie(Vehicule v){
        if (v.getCatégorie().equals("bus")){
            request.setAttribute("cattype","listebus");
        }else{
            if (v.getCatégorie().equals("moto")) {
                request.setAttribute("cattype", "listemotos");
            }else{
                request.setAttribute("cattype", "listevoitures");
            }

        }
    }



    @ExceptionHandler(StorageFileNotFoundException.class)
    public ResponseEntity<?> handleStorageFileNotFound(StorageFileNotFoundException exc) {
        return ResponseEntity.notFound().build();
    }


    @RequestMapping(value="/backend/listedesvehicules2",method=RequestMethod.GET)
    public String listedesvehicules()
    {

            request.setAttribute("voiture", serviceAdministrateur.GetVehiculeList());
            return "Back/administrateur/véhicule/listedesvehicules";



    }



    @RequestMapping(value="/backend/listedesvehicules",method=RequestMethod.GET)
    public String listedesvehicules(@RequestParam("id") String id)
    {
        if (id.equals("listevoitures")) {
            request.setAttribute("voiture", serviceAdministrateur.getListVoiture());
            return "Back/administrateur/véhicule/listevoitures";
        }else{
            if (id.equals("listebus")) {
                request.setAttribute("bus",serviceAdministrateur.getListBus());
                return "Back/administrateur/véhicule/listebus";
            }else{
                request.setAttribute("moto",serviceAdministrateur.getListMoto());
                return "Back/administrateur/véhicule/listemotos";
            }
        }


    }

    // Locataire

    @RequestMapping(value="/backend/listlocataires",method= RequestMethod.GET)
    public String getLocataires ()
    {

        request.setAttribute("listLoca",serviceAdministrateur.getAllLocataire());
        return"Back/administrateur/locataire/table";
    }
    @RequestMapping(value="/backend/listlocatairesBloqué",method= RequestMethod.GET)
    public String getLocataireBloqué ()
    {

        request.setAttribute("listLoca",serviceAdministrateur.getLocatairebloqué());


        return"Back/administrateur/locataire/table";
    }
    @RequestMapping(value="/backend/bloquerlocataire",method= RequestMethod.GET)
    public String bloquerlocataire (@RequestParam("id") int id)
    {    System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Locataire l = serviceAdministrateur.getLocataire(id);
        l.setEtat("bloqué");
        serviceAdministrateur.AjouterLocataire(l);

        request.setAttribute("listLoca",serviceAdministrateur.getAllLocataire());

        return"Back/administrateur/locataire/table";
    }

    @RequestMapping(value="/backend/débloquerlocataire",method= RequestMethod.GET)
    public String débloquerlocataire (@RequestParam("id") int id)
    {    System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Locataire l = serviceAdministrateur.getLocataire(id);
        l.setEtat("approuvé");
        serviceAdministrateur.AjouterLocataire(l);

        request.setAttribute("listLoca",serviceAdministrateur.getAllLocataire());

        return"Back/administrateur/locataire/table";
    }



    //Depot


    @RequestMapping(value="/ListeDesDepots")
    public String ListeDesDepots()
    {
        ArrayList<Depot> d =serviceAdministrateur.ListeDesDepot();
        String options="" ;
        for (Depot d1 : d){
            options =options+"<option value='" + d1.getIdDepot() +"'>" + d1.getAdresse() + "</option>";
        }
        return options;
    }


}


