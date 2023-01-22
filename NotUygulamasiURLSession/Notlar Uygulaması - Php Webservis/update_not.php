<?php
    
    $response = array();
    
    if (isset($_POST['not_id']) && isset($_POST['ders_adi']) && isset($_POST['not1']) && isset($_POST['not2'])) {
        $not_id = $_POST['not_id'];
        $ders_adi = $_POST['ders_adi'];
        $not1 = $_POST['not1'];
        $not2 = $_POST['not2'];
        
        //DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE değişkenleri alınır.
        require_once __DIR__ . '/db_config.php';
        
        // Bağlantı oluşturuluyor.
        $baglanti = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
        
        // Bağlanti kontrolü yapılır.
        if (!$baglanti) {
            die("Hatalı bağlantı : " . mysqli_connect_error());
        }
        
        $sqlsorgu = "UPDATE notlar SET notlar.ders_adi = '$ders_adi',notlar.not1 = $not1,notlar.not2 = $not2 WHERE notlar.not_id = $not_id  ";
        
        
        if (mysqli_query($baglanti, $sqlsorgu)) {
            
            $response["success"] = 1;
            $response["message"] = "successfully ";
            
            echo json_encode($response);
        } else {
            
            $response["success"] = 0;
            $response["message"] = "No product found";
            
            echo json_encode($response);
        }
        
        //bağlantı koparılır.
        mysqli_close($baglanti);
        
    } else {
        
        $response["success"] = 0;
        $response["message"] = "Required field(s) is missing";
        
        echo json_encode($response);
    }
    
    ?>
