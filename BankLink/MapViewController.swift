//
//  MapViewController.swift
//  tablesStoryboards
//
//  Created by Diego Cortes on 25/11/23.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController /*MKMapViewDelegate*/ {
    let map = MKMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        map.frame = view.bounds
        map.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 20.75, longitude: -103.45), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)), animated: true)
//        map.delegate = self
        addCustomPin(coordinates: CLLocationCoordinate2D(latitude: 20.72, longitude: -103.404))
        addCustomPin(coordinates: CLLocationCoordinate2D(latitude: 20.74, longitude: -103.44))
        addCustomPin(coordinates: CLLocationCoordinate2D(latitude: 20.75, longitude: -103.45))
        addCustomPin(coordinates: CLLocationCoordinate2D(latitude: 20.72, longitude: -103.46))
        addCustomPin(coordinates: CLLocationCoordinate2D(latitude: 20.77, longitude: -103.47))
        // Do any additional setup after loading the view.
    }
    
    private func addCustomPin(coordinates: CLLocationCoordinate2D) {
        let pin = MKPointAnnotation()
        pin.title = "BankLink Branch"
        pin.subtitle = "Visit us"
        pin.coordinate = coordinates
        map.addAnnotation(pin)
    }
    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        guard !(annotation is MKUserLocation) else {
//            return nil
//        }
//
//        var annotationView = map.dequeueReusableAnnotationView(withIdentifier: "custom")
//        if annotationView == nil {
//            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
//            annotationView?.canShowCallout = true
//
//        } else {
//            annotationView?.annotation = annotation
//        }
//        annotationView?.image = UIImage(systemName: "location.fill")
//        return annotationView
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
