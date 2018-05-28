package TAL.Repository;

import TAL.model.Locataire;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;

public interface RequetesLocataire extends JpaRepository<Locataire, Integer>
{
    @Query(value="Select * from locataire where pseudo=:pseudo" , nativeQuery=true)
    ArrayList<Locataire> testepseudo(@Param("pseudo") String pseudo);

    @Query(value="Select * from locataire where email=:e" , nativeQuery=true)
    ArrayList<Locataire> testeemail(@Param("e") String email);

    @Query(value="Select * from locataire where email=:e" , nativeQuery=true)
   ArrayList<Locataire> getLocataireByEmail(@Param("e") String email);

    @Query(value="Select * from locataire where etat='bloqué';" , nativeQuery=true)
    ArrayList<Locataire> locataireBloqué();

    @Query(value="Select * from locataire where id_locataire=:id;" , nativeQuery=true)
    Locataire getLocataire(@Param("id") int id);


}
