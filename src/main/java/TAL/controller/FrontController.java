package TAL.controller;

import TAL.Repository.RequetesLocataire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("pseudo")
public class FrontController {

    @Autowired
    RequetesLocataire requetesLocataire;


    @RequestMapping(value="/index.html",method= RequestMethod.GET)
    public String index ()
    {
        return"Front/index";
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

    @RequestMapping(value="/connexion.html",method= RequestMethod .GET)
    public String connexionPage ()
    {
        return"front/connexion";
    }



}
