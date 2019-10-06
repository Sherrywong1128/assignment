//
//  MapViewController.swift
//  Assignment
//
//  Created by Tsztung Wong on 6/10/2019.
//  Copyright © 2019 16219007. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // set initial location in HKBU
        let initialLocation = CLLocation(latitude: 22.3380838, longitude: 114.18186)
        
        let regionRadius: CLLocationDistance = 300
        
        let coordinateRegion = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: regionRadius * 2.0,
            longitudinalMeters: regionRadius * 2.0)
        
        mapView.setRegion(coordinateRegion, animated: true)
        
        mapView.showsUserLocation = true
        
//        let waiHang = MKPointAnnotation()
//
//        waiHang.coordinate = CLLocationCoordinate2D(latitude: 22.3380838, longitude: 114.18186)
//        waiHang.title = "Wai Hang"
//        waiHang.subtitle = "Sports Center"
//
//        mapView.addAnnotation(waiHang)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
