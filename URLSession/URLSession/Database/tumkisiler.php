<?php
// array for JSON response
$response = array();

// DB_SERVER, DB_USER , DB_PASSWORD, DB_DATABASE değişkenleri alınır.
require_once __DIR__. '/db_config.php';

//Bağlantı Oluşturuluyor.
$baglanti = mysqli_connect(DB_SERVER , DB_USER , DB_PASSWORD , DB_DATABASE);

//Bağlantı Kontrolü Yapılıyor.
if(!$baglanti){
    die("Hatalı Bağlantı: ". mysqli_connect_error());
}

$sqlsorgu = "SELECT * FROM kisiler";
$result = mysqli_query($baglanti, $sqlsorgu);

// Result Kontrolü Yap.
if(mysqli_num_rows($result) > 0){
    
    $response["kisiler"] = array();
    
    while ($row = mysqli_fetch_assoc($result)) {
        //temp user array
        $kisiler = array();
        
        $kisiler["kisi_id"] = $row["kisi_id"];
        $kisiler["kisi_ad"] = $row["kisi_ad"];
        $kisiler["kisi_tel"] = $row["kisi_tel"];
        
        //push single product into final response array
        array_push($response["kisiler"], $kisiler);
    }
    //success
    $response["success"] = 1;
    
    //echoing JSON response
    echo json_encode($response);
}
else {
    $response["success"] = 0;
    $response["message"] = "No data found";
    
    //echo no users JSON
    echo json_encode($response);
}

// Bağlantı Koparılır.
mysqli_close($baglanti)
?>



