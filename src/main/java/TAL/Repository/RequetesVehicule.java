package TAL.Repository;


import TAL.model.Vehicule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.ArrayList;

public interface RequetesVehicule extends JpaRepository<Vehicule, Integer> {

    @Query(value="Select * from Vehicule where catégorie='voiture';" , nativeQuery=true)
    ArrayList<Vehicule> ListVoiture();

    @Query(value="Select * from Vehicule where catégorie='bus';" , nativeQuery=true)
    ArrayList<Vehicule> ListBus();

    @Query(value="Select * from Vehicule where catégorie='moto';" , nativeQuery=true)
    ArrayList<Vehicule> ListMoto();

    @Query(value="Select * from Vehicule where matricule=:m" , nativeQuery=true)
    Vehicule matriculeexist(@Param("m") String matricule);

    @Query(value="Select  * from  vehicule where id_depot=:idDepot" , nativeQuery=true)
    ArrayList<Vehicule> ListesVehiculesDepots(@Param("idDepot") int id);
}
