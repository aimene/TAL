package TAL.Repository;


import TAL.model.Vehicule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.sql.Date;
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

    @Query(value="Select  * from  vehicule where etat='libre'" , nativeQuery=true)
    ArrayList<Vehicule> getCatégorie();

    @Query(value="Select  * from  vehicule where catégorie=:cat  and etat='libre'" , nativeQuery=true)
    ArrayList<Vehicule> getMarqueByCatégorie(@Param("cat") String catégorie);

    @Query(value="Select  * from  vehicule where catégorie=:cat and marque=:mar and etat='libre'" , nativeQuery=true)
    ArrayList<Vehicule> getModèleByCatégorieAndMarque(@Param("cat") String catégorie,@Param("mar") String marque);

   @Query(value="Select  * from  vehicule  " +
           " where ( catégorie=:catégorie)or (:catégorie='') " +
           "and (( marque=:marque ) or (:marque='')) " +
           "and (boite=:boite  ) "+
           "and ((modèle=:modèle ) or (:modèle=''))" +
           "and (energie=:energie )" +

           "and ( plj <:prixmax)" +
            "and (vehicule.id_vehicule not in (select DISTINCT vehicule.id_vehicule from location as m , vehicule as v " +
           "where m.id_vehicule = v.id_vehicule " +
           "and m.dated between :dateD and :dateR))"
            , nativeQuery=true)
    ArrayList<Vehicule> rechercherParJour(@Param("catégorie") String catégorie,
                                   @Param("modèle")String modèle,@Param("marque") String marque,@Param("boite") String boite ,@Param("energie") String energie,
                                   @Param("dateD") Date dateD,@Param("dateR") Date dateR,
                                 @Param("prixmax") int prixmax
    );

    @Query(value="Select  * from  vehicule  " +
            " where ( catégorie=:catégorie)or (:catégorie='') " +
            "and (( marque=:marque ) or (:marque='')) " +
            "and (boite=:boite  ) "+
            "and ((modèle=:modèle ) or (:modèle=''))" +
            "and (energie=:energie )" +

            "and (plh < :prixmax  )" +
            "and (vehicule.id_vehicule not in (select DISTINCT vehicule.id_vehicule from location as m , vehicule as v " +
            "where m.id_vehicule = v.id_vehicule " +
            "and m.heured between (:heureD and :heureR )" +
            "and m.heurer between  (:heureD and :heureR )" +
            "and m.dated = :dateD))"
            , nativeQuery=true)
    ArrayList<Vehicule> rechercherParHeure(@Param("catégorie") String catégorie,
                                           @Param("modèle")String modèle, @Param("marque") String marque, @Param("boite") String boite , @Param("energie") String energie,
                                           @Param("dateD") Date dateD, @Param("heureD") String heureD, @Param("heureR") String heureR,
                                           @Param("prixmax") int prixmax
    );
}
