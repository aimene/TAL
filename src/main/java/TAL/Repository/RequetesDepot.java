package TAL.Repository;

import TAL.model.Depot;
import TAL.model.Vehicule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;

public interface RequetesDepot extends JpaRepository<Depot, Integer> {


    @Query(value="Select  COUNT(id_vehicule) as nbrv from depot d , vehicule v " +
            "where d.id_depot=v.id_depot" , nativeQuery=true)
     ArrayList<Depot> getDépotRestCapacité();


}

