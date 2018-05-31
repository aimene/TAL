package TAL.service;

import TAL.Repository.RequetesFeedback;
import TAL.Repository.RequetesLocataire;
import TAL.Repository.RequetesVehicule;
import TAL.model.Feedback;
import TAL.model.Locataire;
import TAL.model.Vehicule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.sql.Date;
import java.util.ArrayList;

@Service
public class FrontService {
    @Autowired
    RequetesLocataire requetesLocataire;
    @Autowired
    RequetesFeedback requetesFeedback;
    @Autowired
    RequetesVehicule requetesVehicule;
    @Autowired
    private JavaMailSender javaMailSender;


    public Locataire ajouterLocataire(Locataire l ){
        return requetesLocataire.save(l);
    }

    public boolean testepseudo( String pseudo){
        ArrayList<Locataire> l = requetesLocataire.testepseudo(pseudo);
        if (l.size()==0){
            return true;
        }else{
            return false;
        }

    }

    public boolean testeemail( String email){
        ArrayList<Locataire> l = requetesLocataire.testeemail(email);
        if (l.size()==0){
            return true;
        }else{
            return false;
        }

    }

    public String generateActivationCode() {
        String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"; // Tu supprimes les lettres dont tu ne veux pas
        String pass = "";
        for(int x=0;x<7;x++)
        {
            int i = (int)Math.floor(Math.random() * 62); // Si tu supprimes des lettres tu diminues ce nb
            pass += chars.charAt(i);
        }
        System.out.println(pass);
        return pass;
    }

    public ArrayList<Locataire> getLocataireByEmail(String email){
        return requetesLocataire.getLocataireByEmail(email);
    }

    public Feedback ajouterFeedback(Feedback f){
        return requetesFeedback.save(f);
}

// filter

    public ArrayList<Vehicule> getCatégorie(){
        return  requetesVehicule.getCatégorie();
    };
    public ArrayList<Vehicule> getMarqueByCatégorie(String catégorie){
        return  requetesVehicule.getMarqueByCatégorie(catégorie);
    };
    public ArrayList<Vehicule> getModèleByCatégorieAndMarque(String catégorie,String marque){
        return  requetesVehicule.getModèleByCatégorieAndMarque(catégorie,marque);
    };

    public ArrayList<Vehicule> rechercheParJour(String catégorie, String modèle, String marque ,
                                         String boite, String energie, Date dateD, Date dateR,
             int prixmax)
    {
        return requetesVehicule.rechercherParJour(catégorie,modèle,marque,boite,energie,dateD,dateR,prixmax);
    }

    public ArrayList<Vehicule> rechercheParHeure(String catégorie, String modèle, String marque ,
                                                String boite, String energie, Date dateD, String heureD , String heureR,
                                                int prixmax)
    {
        return requetesVehicule.rechercherParHeure(catégorie,modèle,marque,boite,energie,dateD,heureD,heureR,prixmax);
    }

    public Vehicule GetVehicule(int id){
        return  requetesVehicule.getOne(id);

    }



    public void sendingMail(String to, String subject, String body) throws MessagingException {
        MimeMessage message=javaMailSender.createMimeMessage();


        MimeMessageHelper helper;
        helper=new MimeMessageHelper(message,true);
        helper.setTo(to);
        helper.setSubject(subject);
        helper.setText(body);
        javaMailSender.send(message);

    }
}
