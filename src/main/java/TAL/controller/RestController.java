package TAL.controller;

import TAL.model.Depot;
import TAL.model.Locataire;
import TAL.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@org.springframework.web.bind.annotation.RestController

public class RestController {

    @Autowired
    BackService backService;

    @RequestMapping(value="/ListeDepot")
    public ArrayList<Depot> ListeDesDepots()
    {
        return backService.ListeDesDepot();
    }
}
