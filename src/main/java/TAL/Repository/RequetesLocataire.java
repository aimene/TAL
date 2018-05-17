package TAL.Repository;

import TAL.model.Locataire;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface RequetesLocataire extends JpaRepository<Locataire, Integer>
{
    @Query(value="Select * from locataire where pseudo=:pseudo" , nativeQuery=true)
    Locataire testepseudo(@Param("pseudo") String pseudo);
}
