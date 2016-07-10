//
//  MapViewController.swift
//  MonsterMapper
//
//  Created by Jorge Vargas on 7/9/16.
//  Copyright © 2016 Monstographers. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    override func viewDidLoad() {
        self.title = "MonsterMappers"
        
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86,
                                                          longitude: 151.20, zoom: 6)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
}
