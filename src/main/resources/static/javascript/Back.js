
jQuery(document).ready(function() {
    App.init();
    debugger;


    $("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });


  //  UIExtendedModals.init();

debugger;
    ListeDesDepots("idDepotV");
    ListeDesDepots("idDepot");
    ListeDesDepots("idDepot1");
// ajouter véhicule test plj plh
    $(".incorrect").hide();
    $(".correct").hide();

    $("#plj").keyup(function(){
        if (parseFloat($("#plh").val())*24>parseFloat($("#plj").val())){
            $(".div2").addClass("has-success");
            $(".div2").removeClass("has-error");
            $(".div1").addClass("has-success");
            $(".div1").removeClass("has-error");
            $(".ajoutervehicule").removeAttr('disabled');
            $(".correct").show();
            $(".incorrect").hide();
        }else{
            $(".div2").removeClass("has-success");
            $(".div2").addClass("has-error");
            $(".div1").removeClass("has-success");
            $(".div1").addClass("has-error");
            $(".ajoutervehicule").attr('disabled','disabled');
            $(".correct").hide();
            $(".incorrect").show();


        }
    });
    $("#plj1").keyup(function(){
        if (parseFloat($("#plh1").val())*24>parseFloat($("#plj1").val())){
            $(".div2").addClass("has-success");
            $(".div2").removeClass("has-error");
            $(".div1").addClass("has-success");
            $(".div1").removeClass("has-error");
            $(".ajoutervehicule").removeAttr('disabled');
            $(".correct").show();
            $(".incorrect").hide();
        }else{
            $(".div2").removeClass("has-success");
            $(".div2").addClass("has-error");
            $(".div1").removeClass("has-success");
            $(".div1").addClass("has-error");
            $(".ajoutervehicule").attr('disabled','disabled');
            $(".correct").hide();
            $(".incorrect").show();


        }
    });
/*
    debugger;
    var cleave = new Cleave('.matricule', {
        delimiters: ['-', '-'],
        blocks: [5, 3, 2],
        uppercase: true,
        numericOnly: true

    });
    debugger;
    var cleave = new Cleave('#matricule1', {
        delimiters: ['-', '-'],
        blocks: [5, 3, 2],
        uppercase: true,
        numericOnly: true

    });
    debugger;
    var cleave = new Cleave('#klm', {

        numericOnly: true

    });
    debugger;
    var cleave = new Cleave('#plj', {
        numericOnly: true
    });
    debugger;
    var cleave = new Cleave('#plh',{
        numericOnly: true
    });
    */

    var id13 = $("#loadList").val();
    console.log(id13);
    if (id13=="aaa"){

        $.ajax({
            type: "get",
            url: "/backend/listedesvehicules2",

            dataType: "html",
            success: function (result) {
                debugger;
                $(".success").hide();

                $("#loadList").val("a");

                // $("#menu2").show();
                $("#afficherlistedesvehicules").html(result);

            },
            error: function (response) {
                debugger;
                alert('error'); }
        }); };







        // liste des voitures
    $("#listedesvehicules").click(function() {
        var id ="listevoitures";
        debugger;
        $.ajax({
            type: "get",
            data: {"id":id},
            url: "/backend/listedesvehicules2",

            dataType: "html",
            success: function (result) {
                debugger;
                $(".success").hide();
                $("#ajoutervéhicule").hide();
                $("#gérerfinlocation").hide();


               // $("#menu2").show();
                $("#afficherlistedesvehicules").html(result);

            },
            error: function (response) {
                debugger;
                alert('error'); }
        });  });
       // liste des bus
   /* $("#listebus").click(function() {
        var id ="listebus";
        console.log(id);
        debugger;
        $.ajax({
            type: "get",
            data: {"id":id},
            url: "/backend/listedesvehicules",

            dataType: "html",
            success: function (result) {
                debugger;
                $(".success").hide();
                $("#ajoutervéhicule").hide();
                $("#gérerfinlocation").hide();


                $("#menu2").show();
                $("#afficherlistedesvehicules").html(result);

            },
            error: function (response) {
                debugger;
                alert('error'); }
        });  });*/
      // Liste des motos
   /* $("#listemotos").click(function() {
        var id ="listemotos";
        debugger;
        $.ajax({
            type: "get",
            data: {"id":id},
            url: "/backend/listedesvehicules",

            dataType: "html",
            success: function (result) {
                debugger;
                $(".success").hide();
                $("#ajoutervéhicule").hide();
                $("#gérerfinlocation").hide();


                $("#menu2").show();
                $("#afficherlistedesvehicules").html(result);

            },
            error: function (response) {
                debugger;
                alert('error'); }
        });  });*/





    var idVehicule1;var catégorie1;var marque1 ;var modele1;var matricule1;
    var energie1;var boite1;var puissance1;
    var couleur1; var plj1; var plh1; var etat1; var klm1;var img ;




    $(".modifier").click(function() {

        idVehicule1= $(this).closest("tr").find(".id").text();

        catégorie1= $(this).closest("tr").find(".catégorie").text();

        marque1= $(this).closest("tr").find(".marque").text();

        modele1= $(this).closest("tr").find(".modèle").text();
        matricule1= $(this).closest("tr").find(".matricule2").text();
        energie1 = $(this).closest("tr").find(".energie").text();
        boite1= $(this).closest("tr").find(".boite").text();
        puissance1= $(this).closest("tr").find(".puissance").text();
        couleur1= $(this).closest("tr").find(".couleur").text();
        plj1= $(this).closest("tr").find(".plj").text();
        plh1= $(this).closest("tr").find(".plh").text();
        klm1= $(this).closest("tr").find(".klm").text();
        etat1= $(this).closest("tr").find("p").text();
        debugger;
        img= $(this).closest("tr").find(".img").attr("src");

        console.log(img);

    });
    $(".modifier").click(function() {
         console.log(matricule1);
        $("#id1").val(idVehicule1);
        $("#catégorie1").val(catégorie1);
        $("#marque1").val(marque1);
        $("#modèle1").val(modele1);
        $("#matricule1").val(matricule1);
        $("#energie1").val(energie1);
        $("#boite1").val(boite1);
        $("#puissance1").val(puissance1);
        $("#couleur1").val(couleur1);
        $("#plj1").val(plj1);
        $("#plh1").val(plh1);
        $("#klm1").val(klm1);
        $("#etat1").val(etat1);
        $("#img").attr('src', img);


    });

/*
    debugger;
    var cleave = new Cleave(".kélom", {

        numericOnly: true

    });
    debugger;
    var cleave = new Cleave('.prixLJ', {
        numericOnly: true
    });
    debugger;
    var cleave = new Cleave('.prixLH',{
        numericOnly: true
    });

    debugger;
    var cleave = new Cleave('#capacite',{
        numericOnly: true
    });

*/

    $("#ajouter").click(function() {

        ListeDesDepots("idDepot");

    });
    $(".modifier").click(function() {



    });
    debugger;


    // Depot
    function ListeDesDepots(id) {

        $.ajax({
            type: "GET",
            url: "/ListeDepot",

            success: function (result) {
                debugger;
                var op ;
                $.each(result, function (index, result) {
                    op= op+"<option value='" +result.idDepot + "'>" + result.adresse + "</option>";
                });
                $("#"+id+"").html(op);
            },
            error: function (response) {

                alert('error');
            }
        });
    };



});

//Modifier véhicule
