package TAL.Repository;

import TAL.model.Depot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;

public interface RequetesDepot extends JpaRepository<Depot, Integer> {


    @Query(value="Select DISTINCT addresse from depot" , nativeQuery=true)
    public ArrayList<String> getAllDepots();
}
