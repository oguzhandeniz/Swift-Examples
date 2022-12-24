<?php
$response = array();

if (isset($_POST['kisi_id'])) {
    $kisi_id = $_POST['kisi_id'];
    
    // DB_SERVER, DB_USER , DB_PASSWORD, DB_DATABASE değişkenleri alınır.
    require_once __DIR__. '/db_config.php';
    
    //Bağlantı Oluşturuluyor.
    $baglanti = mysqli_connect(DB_SERVER , DB_USER , DB_PASSWORD , DB_DATABASE);
    
    //Bağlantı Kontrolü Yapılıyor.
    if(!$baglanti){
        die("Hatalı Bağlantı: ". mysqli_connect_error());
    }
    
    $sqlsorgu = "DELETE FROM kisiler WHERE kisiler.kisi_id = $kisi_id";
    
    if(mysqli_query($baglanti , $sqlsorgu)){
        $response["success"] = 1;
        $response["message"] = "successfully";
        
        echo json_encode($response);
    }
    else {
        $response["success"] = 0;
        $response["message"] = "No product found";
        
        echo json_encode($response);
    }
    
    // Bağlantı koparılır.
    mysqli_close($baglanti);
}
else {
    $response["success"] = 0;
    $response["message"] = "Required field is missing";
    echo json_encode($response);
}
?>
