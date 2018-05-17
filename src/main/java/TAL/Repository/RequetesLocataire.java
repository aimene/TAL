package TAL.Repository;

import TAL.model.Locataire;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RequetesLocataire extends JpaRepository<Locataire, Integer>
{

}
