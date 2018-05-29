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

    @RequestMapping(value="/connexionBack",method= RequestMethod.GET)
    public String authentification()
    {
        return"Back/connexion";
    }


    @RequestMapping(value="/espaceGestAgence",method= RequestMethod.GET)
    public String espaceGestAgence()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{
            if (u.getType().equals("agence")){
                return "Back/espaceGestAgence";
            }else{
                return "redirect:/connexionBack";
            }
        }


    }

    @RequestMapping(value="/espaceGestDépot",method= RequestMethod.GET)
    public String espaceGestDépot()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{
            if (u.getType().equals("depot")){
                return "Back/espaceGestDépot";
            }else{
        return "redirect:/connexionBack";
              }
        }

    }

    @RequestMapping(value="/espaceadmin",method= RequestMethod.GET)
    public String espaceadmin()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{

                return "Back/espaceadmin";

        }

    }

    @RequestMapping(value="/gérervéhicules",method= RequestMethod.GET)
    public String gérervéhicules()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{

           return"Back/administrateur/véhicule/gérervéhicules";
        }

    }

    @RequestMapping(value="/gérerdépot",method= RequestMethod.GET)
    public String gérerdépot()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{


        return"Back/administrateur/dépot/gérerdépot";}
    }

    @RequestMapping(value="/gérercomptesgestionnaires",method= RequestMethod.GET)
    public String gérercomptesgestionnaires()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{

            return"Back/administrateur/gestionnaire/gérercomptesgestionnaires";
        }

    }

    @RequestMapping(value="/gérercompteslocataires",method= RequestMethod.GET)
    public String gérercompteslocataires()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }else{

            return"Back/administrateur/locataire/gérercompteslocataires";
        }

    }







    @RequestMapping(value="/sedéconnecterBack",method= RequestMethod.GET)
    public String déconnexion ()
    {
        HttpSession session =request.getSession();

        session.invalidate();
        return  "Back/connexion";
    }

    @RequestMapping(value="/seconnecterBack",method= RequestMethod.POST)
    public String login (@RequestParam("pseudo") String pseudo, @RequestParam("motdepasse") String motdepasse)
    {
        HttpSession session =request.getSession();
        Utilisateur u =serviceAdministrateur.getUtilisateurByPseudo(pseudo);
        if (u==null&&u.getEtat().equals("approuvé")){
            request.setAttribute("succes","compteinexistant");
            return "redirect:/connexionBack";
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
                return "redirect:/connexionBack";
            }

        }


    }


    @RequestMapping(value="/ajoutergestionnaire",method= RequestMethod.POST)
    public String ajoutergestionnaire (@ModelAttribute("utilisateur") Utilisateur u)
    {
        HttpSession session =request.getSession();
        Utilisateur u1= (Utilisateur) session.getAttribute("utilisateur");
        if (u1==null){
            return "redirect:/connexionBack";
        }
        Utilisateur r =serviceAdministrateur.getUtilisateurByPseudo(u.getPseudo());
        Utilisateur e = serviceAdministrateur.getUtilisateurByEmail(u.getEmail());
        if (r == null && e==null){
            u.setEtat("approuvé");
            request.setAttribute("ajoutgestionnaire",true);
            serviceAdministrateur.AjouterUtilisateur(u);
        }else{
            request.setAttribute("ajoutgestionnaire",false);
        }

                return"Back/administrateur/gestionnaire/gérercomptesgestionnaires";



    }

    @RequestMapping(value="/backend/listgestionnairesagence",method= RequestMethod.GET)
    public String getGestionnairesAgence (){
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        ArrayList<Utilisateur> l = serviceAdministrateur.getGestionAgenceList();
        request.setAttribute("listGestA",l);
        return"Back/administrateur/gestionnaire/tablegestionnairesagence";
    }

    @RequestMapping(value="/backend/listgestionnairesdépot",method= RequestMethod.GET)
    public String getGestionnairesDépot ()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        ArrayList<Utilisateur> l = serviceAdministrateur.getGestionDepotList();
        request.setAttribute("listGest",l);
        return"Back/administrateur/gestionnaire/tablegestionnairesdépot";
    }

    @RequestMapping(value="/backend/bloquerGestionnaireAgence",method= RequestMethod.GET)
    public String bloquerGestionnaireAgence (@RequestParam("id") int id)
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("bloqué");
        serviceAdministrateur.AjouterUtilisateur(l);

        request.setAttribute("listGestA",serviceAdministrateur.getGestionAgenceList());
        return "Back/administrateur/gestionnaire/tablegestionnairesagence";





    }

    @RequestMapping(value="/backend/débloquerGestionnaireAgence",method= RequestMethod.GET)
    public String débloquerGestionnaireAgence (@RequestParam("id") int id)
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("approuvé");
        serviceAdministrateur.AjouterUtilisateur(l);


        request.setAttribute("listGestA",serviceAdministrateur.getGestionAgenceList());
        return "Back/administrateur/gestionnaire/tablegestionnairesagence";


    }
    @RequestMapping(value="/backend/bloquerGestionnaireDépot",method= RequestMethod.GET)
    public String bloquerGestionnaireDépot (@RequestParam("id") int id)
    {

        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }System.out.println(id);
        // int id1 = Integer.parseInt(id);
        Utilisateur l = serviceAdministrateur.GetUtilisateurById(id);
        l.setEtat("bloqué");
        serviceAdministrateur.AjouterUtilisateur(l);

        request.setAttribute("listGest",serviceAdministrateur.getGestionDepotList());
        return "Back/administrateur/gestionnaire/tablegestionnairesdépot";





    }

    @RequestMapping(value="/backend/débloquerGestionnaireDépot",method= RequestMethod.GET)
    public String débloquerGestionnaireDépot (@RequestParam("id") int id) {    System.out.println(id);

        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        } // int id1 = Integer.parseInt(id);
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
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        if (!vr.getMatricule().equals("")){
            boolean b =serviceAdministrateur.TestMatricule(vr.getMatricule());
            if (!b){
                ArrayList<Vehicule> list = new ArrayList<>();
                vr.setImagepath("imagevehicule/"+file.getOriginalFilename());

                list.add(vr);
                storageService.store(file);
                serviceAdministrateur.AjouterVéhicule(vr);
                request.setAttribute("cattype","aaa");
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
            request.setAttribute("cattype","aaa");
            storageService.store(file);



        }
        return "Back/administrateur/véhicule/gérervéhicules";
    }
    @RequestMapping(value = "/supprimervehicule",method =RequestMethod.POST)
    public String supprimervehicule(@RequestParam("idsupprimer") int id) {


           Vehicule v = serviceAdministrateur.GetVehicule(id);
           if (!v.getEtat().equals("libre")){
               request.setAttribute("supprimerVehicule",false);
               return "Back/administrateur/véhicule/gérervéhicules";
           }
        request.setAttribute("supprimerVehicule",true);
           request.setAttribute("cattype","aaa");
           serviceAdministrateur.SupprimerVehicule(id);

        return "Back/administrateur/véhicule/gérervéhicules";
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
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        request.setAttribute("listLoca",serviceAdministrateur.getAllLocataire());
        return"Back/administrateur/locataire/table";
    }
    @RequestMapping(value="/backend/listlocatairesBloqué",method= RequestMethod.GET)
    public String getLocataireBloqué ()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        request.setAttribute("listLoca",serviceAdministrateur.getLocatairebloqué());


        return"Back/administrateur/locataire/table";
    }
    @RequestMapping(value="/backend/bloquerlocataire",method= RequestMethod.GET)
    public String bloquerlocataire (@RequestParam("id") int id)
    {    System.out.println(id);

        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }// int id1 = Integer.parseInt(id);
        Locataire l = serviceAdministrateur.getLocataire(id);
        l.setEtat("bloqué");
        serviceAdministrateur.AjouterLocataire(l);

        request.setAttribute("listLoca",serviceAdministrateur.getAllLocataire());

        return"Back/administrateur/locataire/table";
    }

    @RequestMapping(value="/backend/débloquerlocataire",method= RequestMethod.GET)
    public String débloquerlocataire (@RequestParam("id") int id)
    {    System.out.println(id);

        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        } // int id1 = Integer.parseInt(id);
        Locataire l = serviceAdministrateur.getLocataire(id);
        l.setEtat("approuvé");
        serviceAdministrateur.AjouterLocataire(l);

        request.setAttribute("listLoca",serviceAdministrateur.getAllLocataire());

        return"Back/administrateur/locataire/table";
    }



    //Depot


    @RequestMapping(value="/ListeDesDepots",method = RequestMethod.GET)
    public String ListeDesDepots()
    {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        ArrayList<Depot> d =serviceAdministrateur.ListeDesDepot();
        String options="" ;
        char c = '"';
        for (Depot d1 : d){
            options =options +"<option value="+c+d1.getIdDepot()+c +">" + d1.getAdresse() + "</option>";
        }
        return options;
    }

    @RequestMapping(value = "/ajouterdepot" ,method =RequestMethod.POST)
    public String ajouterdepot( @ModelAttribute("depot") Depot depot) {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        serviceAdministrateur.ajouterDépot(depot);
        request.setAttribute("dépotslist",serviceAdministrateur.GetDépotsList());


        return "Back/administrateur/dépot/gérerdépot";
    }
    @RequestMapping(value = "/supprimerdepot" ,method =RequestMethod.POST)
    public String supprimerdepot( @RequestParam("idDepot") int idDepot) {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }
        Depot depot = serviceAdministrateur.getDepotById(idDepot);
        if(serviceAdministrateur.ListeDesVehiculesDepot(idDepot).size()>0){
            request.setAttribute("supprimerDepot",false);
        }else{
            request.setAttribute("supprimerDepot",true);
            serviceAdministrateur.supprimerDepot(depot);
        }
        request.setAttribute("dépotslist",serviceAdministrateur.GetDépotsList());


        return "Back/administrateur/dépot/gérerdépot";
    }

    @RequestMapping(value = "/listdepot" ,method =RequestMethod.GET)
    public String listdepot( ) {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }

        request.setAttribute("dépotslist",serviceAdministrateur.GetDépotsList());


        return "Back/administrateur/dépot/gérerdépot";
    }


    @RequestMapping(value = "/listeVehiculesDépot" ,method =RequestMethod.GET)
    public String ListVehiculesDépot( int id) {
        HttpSession session =request.getSession();
        Utilisateur u= (Utilisateur) session.getAttribute("utilisateur");
        if (u==null){
            return "redirect:/connexionBack";
        }

        request.setAttribute("ListVehiculesDépot",serviceAdministrateur.ListeDesVehiculesDepot(id));


        return "Back/administrateur/dépot/listeVehiculesDépot";
    }





}


