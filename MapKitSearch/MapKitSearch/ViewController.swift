//
//  ViewController.swift
//  MapKitSearch
//
//  Created by Oğuzhan Deniz on 25.12.2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var aramaBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    
    let istek = MKLocalSearch.Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aramaBar.delegate = self
        mapView.delegate = self
      
        // Safranbolu Eski Çarşı Koordinatları = 41.245402, 32.693059
        
        let konum = CLLocationCoordinate2D(latitude: 41.245402, longitude: 32.693059)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let bolge = MKCoordinateRegion(center: konum, span: span)
        
        mapView.setRegion(bolge, animated: true)
        
        istek.region = mapView.region
    
    }

}

extension ViewController: UISearchBarDelegate, MKMapViewDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
     
        self.view.endEditing(true)
        istek.naturalLanguageQuery = searchBar.text!
        
        if mapView.annotations.count > 0 {
            mapView.removeAnnotations(mapView.annotations)
        }
        
        let arama = MKLocalSearch(request: istek)
        
        arama.start(completionHandler: { (response, error) in
            if error != nil {
                print("Hata")
            }
            else if response!.mapItems.count == 0 {
                print("Bulunamadı")
            }
            else {
                for mekan in response!.mapItems {
                    
                    if let ad = mekan.name, let tel = mekan.phoneNumber {
                        print("Ad: \(ad)")
                        print("Tel: \(tel)")
                        print("Enlem: \(mekan.placemark.coordinate.latitude)")
                        print("Boylam: \(mekan.placemark.coordinate.longitude)")
                        
                        
                        let pin = MKPointAnnotation()
                        pin.coordinate = mekan.placemark.coordinate
                        pin.title = ad
                        pin.subtitle = tel
                        self.mapView.addAnnotation(pin)
                    }
                }
            }
        })
    }
}
