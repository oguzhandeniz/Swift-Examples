<?php
    
    $response = array();
    
    if (isset($_POST['ders_adi']) && isset($_POST['not1']) && isset($_POST['not2'])) {
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
        
        $sqlsorgu = "INSERT INTO notlar (ders_adi,not1,not2) VALUES ('$ders_adi',$not1,$not2)";
        
        
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



