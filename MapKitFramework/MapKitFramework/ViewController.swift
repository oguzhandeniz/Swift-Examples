//
//  ViewController.swift
//  MapKitFramework
//
//  Created by Oğuzhan Deniz on 25.12.2022.
//

import UIKit
import MapKit

// 41.0373113,28.9833736 -> Taksim Konum Bilgisi

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let konum = CLLocationCoordinate2D(latitude: 41.0373113, longitude: 28.9833736)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let bolge = MKCoordinateRegion(center: konum, span: span)
        
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Taksim Başlık"
        pin.subtitle = "Taksim Altbaşlık"
        
        mapView.addAnnotation(pin)
    }


}

