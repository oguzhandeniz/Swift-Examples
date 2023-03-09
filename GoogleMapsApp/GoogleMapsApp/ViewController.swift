//
//  ViewController.swift
//  GoogleMapsApp
//
//  Created by Oğuzhan Deniz on 25.12.2022.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    @IBOutlet weak var gmsMapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Taksim Maps Info -> 41.036889, 28.985069 ,16.04z
        let camera = GMSCameraPosition.camera(withLatitude: 41.036889, longitude: 28.985069, zoom: 16)
        gmsMapView.camera = camera
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 41.036889, longitude: 28.985069)
        marker.title = "Taksim Başlık"
        marker.snippet = "Taksim Altbaşlık"
        marker.map = gmsMapView
    }


}

