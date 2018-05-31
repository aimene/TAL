package TAL.controller;

import TAL.model.Feedback;
import TAL.model.Locataire;
import TAL.model.Location;
import TAL.model.Vehicule;
import TAL.service.FrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

@Controller
public class FrontController implements ErrorController {

    @Autowired
    FrontService frontService;
    @Autowired
    private HttpServletRequest request;




    @RequestMapping(value="/error",method= RequestMethod.GET)
    public String erreur()
    {
        return"Front/erreur";
    }
    @Override
    public String getErrorPath() {
        return "/error";
    }

    @RequestMapping(value="/index.html",method= RequestMethod.GET)
    public String index ()
    {
        return "Front/index";
    }

    @RequestMapping(value="/apropos.html",method= RequestMethod.GET)
    public String apropos ()
    {
        return"Front/apropos";
    }
    @RequestMapping(value="/noscontacter.html",method= RequestMethod.GET)
    public String noscontacter ()
    {
        return"Front/noscontacter";
    }
    @RequestMapping(value="/réserver.html",method= RequestMethod.GET)
    public String réserver ()
    {
        return"Front/réserver";
    }

    @RequestMapping(value="/demendecodeactivation.html",method= RequestMethod.GET)
    public String demander ()
    {
        return"Front/demandecodeactivation";
    }

    @RequestMapping(value="/activation.html",method= RequestMethod.GET)
    public String activer ()
    {
        return "/WEB-INF/Front/activation.html";
    }

    @RequestMapping(value="/récupération.html",method= RequestMethod.GET)
    public String récupérer ()
    {
        return"Front/récupérationmotdepasse";
    }

    @RequestMapping(value="/s'inscrire.html",method= RequestMethod.GET)
    public String sinscrire ()
    {
        return"Front/s'inscrire";
    }
    @RequestMapping(value="/seconnecter.html",method= RequestMethod.GET)
    public String seconnecter ()
    {
        return"Front/seconnecter";
    }

    @RequestMapping(value="/espacelocataire.html",method= RequestMethod.GET)
    public String espacelocataire ()
    {
        HttpSession session =request.getSession();
        if(session.isNew()){
            return "Front/index";
        }else{

        return"Front/espacelocataire";}
    }



    // post methode

    @RequestMapping(value="/inscription",method= RequestMethod .POST)
    public String Sinscrire (@ModelAttribute("locataire") Locataire locataire) throws MessagingException {


            boolean a= frontService.testepseudo(locataire.getPseudo());
            boolean b =frontService.testeemail(locataire.getEmail());
            if ( a && b){
                locataire.setEtat("inactif");
                locataire.setSession(0);
                locataire.setCodeActivation(frontService.generateActivationCode());
                request.setAttribute("success",true);



                frontService.sendingMail(locataire.getEmail(),"Code d'activation TALocation",locataire.getCodeActivation());
                frontService.ajouterLocataire(locataire);



                return "Front/seconnecter";
            }else{

                request.setAttribute("success",false);
                return "Front/s'inscrire";
            }


    };

    @RequestMapping(value="/activer",method= RequestMethod .POST)
    public String ActiverCompte(@RequestParam("codeActivation") String codeActivation,@RequestParam("email") String email) throws MessagingException {

        HttpSession session =request.getSession();

        ArrayList<Locataire> locataire = frontService.getLocataireByEmail(email);
        if (locataire.size()==0){
            request.setAttribute("compteinexistant", true);

        return "Front/activation";
        }else {
            if (codeActivation.equals(locataire.get(0).getCodeActivation())) {
                locataire.get(0).setEtat("approuvé");

                frontService.ajouterLocataire(locataire.get(0));
                request.setAttribute("success", true);
                return "Front/activation";
            } else {
                request.setAttribute("success", false);

                return "Front/activation";
            }
        }
    };

    @RequestMapping(value="/demandecodeactivation",method= RequestMethod .POST)
    public String demanderCodeActivation(@RequestParam("email") String email) throws MessagingException {



        ArrayList<Locataire> locataire = frontService.getLocataireByEmail(email);
        if (locataire.size()!=0){
            locataire.get(0).setCodeActivation(frontService.generateActivationCode());
            frontService.ajouterLocataire(locataire.get(0));
            frontService.sendingMail(locataire.get(0).getEmail(),"Nouveau code d'activation",locataire.get(0).getCodeActivation());
                request.setAttribute("success",true);
            return "Front/demandecodeactivation";
        }else{
            request.setAttribute("success",false);

            return "Front/demandecodeactivation";
        }




    };

    @RequestMapping(value="/récupérationmotdepasse",method= RequestMethod .POST)
    public String récupérermotdepasse(@RequestParam("email") String email) throws MessagingException {



        ArrayList<Locataire> locataire = frontService.getLocataireByEmail(email);
        if (locataire.size()!=0){
            locataire.get(0).setMotdepasse(frontService.generateActivationCode());
            frontService.ajouterLocataire(locataire.get(0));
            frontService.sendingMail(locataire.get(0).getEmail(),"Nouveau mot de passe",locataire.get(0).getMotdepasse());
            request.setAttribute("success",true);
            return "Front/récupérationmotdepasse";
        }else{
            request.setAttribute("success",false);

            return "Front/récupérationmotdepasse";
        }




    };

    @RequestMapping(value="/seconnecter.html",method= RequestMethod .POST)
    public String seconnecter(@RequestParam("motdepasse") String motdepasse,@RequestParam("email") String email) throws MessagingException {

        HttpSession session =request.getSession();
        ArrayList<Locataire> locataire = frontService.getLocataireByEmail(email);
        if (locataire.size()==0){

            request.setAttribute("success", false);
            return"Front/seconnecter";
        }else {
            if (locataire.get(0).getMotdepasse().equals(motdepasse)&&locataire.get(0).getEmail().equals(email)){
                if (locataire.get(0).getEtat().equals("inactif")){
                    request.setAttribute("inactif", true);
                    System.out.println("//////////////////////////////////");
                    return"Front/activation";
                }else{
                session.setAttribute("locataire",locataire.get(0));
                return "Front/espacelocataire";}
            }else{
                request.setAttribute("success", true);
                return"Front/seconnecter";
            }


        }
    };

    @RequestMapping(value="/sedéconnecter",method= RequestMethod .GET)
    public String sedéconnecter() {

        HttpSession session =request.getSession();
        Locataire l = (Locataire)session.getAttribute("locataire");
        l.setSession(0);
        frontService.ajouterLocataire(l);
        session.invalidate();

        return "Front/index";

    };

    @RequestMapping(value="/modifiermotdepasse",method= RequestMethod .POST)
    public String modifierMotdepasse(@RequestParam("ancien") String ancien,@RequestParam("nouveau") String nouveau) {

        HttpSession session =request.getSession();
        Locataire l = (Locataire)session.getAttribute("locataire");
        if (l.getMotdepasse().equals(ancien)) {
            l.setMotdepasse(nouveau);
            frontService.ajouterLocataire(l);
            request.setAttribute("ancien",true);
            return "Front/espacelocataire";
        }else{
            request.setAttribute("ancien",false);
            return "Front/espacelocataire";

        }

    };

    @RequestMapping(value="/feedback",method= RequestMethod.POST)
    public String feedback(@ModelAttribute("feedback")Feedback f) {
        frontService.ajouterFeedback(f);
        request.setAttribute("success",true);

        return "Front/noscontacter";


    };


   @RequestMapping(value="/rechercher",method= RequestMethod.POST)
    public String rechercher(@RequestParam("catégorie") String catégorie, @RequestParam("modèle") String modèle,
                             @RequestParam("marque") String marque, @RequestParam("boite") String boite , @RequestParam("energie") String energie,
                             @RequestParam("range_2") int prixmax, @RequestParam("dateD") String dateD,@RequestParam("dateDH") String dateDH, @RequestParam("dateR") String dateR,
                             @RequestParam("heureD") String heureD, @RequestParam("type") String type, @RequestParam("heureR") String heureR
                             ) throws ParseException {

       SimpleDateFormat format = new SimpleDateFormat("dd-mm-yyyy");





       java.sql.Date  dateDDD ,  dateRRR,  dateDDDD;

       Location location = new Location();
       ArrayList<Vehicule> vehicules = null ;
        if(type.equals("parjours")){

            dateDDD = new java.sql.Date(format.parse(dateD).getTime());

             dateRRR= new java.sql.Date(format.parse(dateR).getTime());
            location.setDateD(dateDDD);
            location.setDateR(dateRRR);
             vehicules= frontService.rechercheParJour(catégorie,modèle,marque,boite,energie,dateDDD,dateRRR,prixmax);
        }else{

             dateDDDD = new java.sql.Date(format.parse(dateDH).getTime());
            location.setHeureD(heureD);location.setHeureD(heureD);location.setDateD(dateDDDD);
             vehicules= frontService.rechercheParHeure(catégorie,modèle,marque,boite,energie,dateDDDD,heureD,heureR,prixmax);
        }




       location.setType(type);

       HttpSession session =request.getSession();
        session.setAttribute("location" , location);
        request.setAttribute("vehicules" , vehicules);




        return "Front/réserver";


    };




}
