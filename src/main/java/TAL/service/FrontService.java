package TAL.service;

import TAL.Repository.RequetesLocataire;
import TAL.model.Locataire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class FrontService {
    @Autowired
    RequetesLocataire requetesLocataire;

    @Autowired
    private JavaMailSender javaMailSender;


    public Locataire ajouterLocataire(Locataire l ){
        return requetesLocataire.save(l);
    }
    public boolean testepseudo( String pseudo){
        Locataire l = requetesLocataire.testepseudo(pseudo);
        if (l==null){
            return true;
        }else{
            return false;
        }

    }

    public String generateActivationCode()
    {
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
