package TAL.Repository;


import TAL.model.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;

public interface RequetesUtilisateur extends JpaRepository<Utilisateur, Integer> {

    @Query(value = "Select * from utilisateur where type='agence';", nativeQuery = true)
    ArrayList<Utilisateur> gestionnaireagence();


    @Query(value = "Select * from utilisateur where type='dépot';", nativeQuery = true)
    ArrayList<Utilisateur> gestionnairedépot();


    @Query(value = "Select * from utilisateur u where (u.pseudo= :pseudo )", nativeQuery = true)
    Utilisateur getUtilisateurByPseudo( @Param("pseudo") String pseudo);

}
