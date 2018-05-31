package TAL.controller;

import TAL.model.Depot;
import TAL.model.Locataire;
import TAL.model.Vehicule;
import TAL.service.BackService;
import TAL.service.FrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@org.springframework.web.bind.annotation.RestController

public class RestController {

    @Autowired
    BackService backService;

    @Autowired
    FrontService frontService;

    @RequestMapping(value="/ListeDepot")
    public ArrayList<Depot> ListeDesDepots()
    {
        return backService.ListeDesDepot();
    }

    @RequestMapping(value="/DépotRestCapacité")
    public ArrayList<Depot> ListeDesDepotsancapacité()
    {
        return backService.getDépotRestCapacité();
    }



    @RequestMapping(value="/getCatégorie")
    public ArrayList<Vehicule> getCatégorie()
    {
        return frontService.getCatégorie();
    }

    @RequestMapping(value="/getMarqueByCatégorie")
    public ArrayList<Vehicule> getMarqueByCatégorie(@RequestParam("catégorie") String catégorie)
    {
        return frontService.getMarqueByCatégorie(catégorie);
    }

    @RequestMapping(value="/getModelByMarqueAndCatégorie")
    public ArrayList<Vehicule> getModelByMarqueAndCatégorie(@RequestParam("catégorie") String catégorie,@RequestParam("marque") String marque)
    {
        return frontService.getModèleByCatégorieAndMarque(catégorie,marque);
    }


}
