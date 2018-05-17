package TAL.controller;

import TAL.Repository.RequetesLocataire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("pseudo")
public class FrontController {

    @Autowired
    RequetesLocataire requetesLocataire;




}
