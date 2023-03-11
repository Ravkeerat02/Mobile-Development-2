//
//  ViewController.swift
//  sensors1
//
//  Created by laptop on 2023-03-09.
//  Copyright © 2023 laptop. All rights reserved.
//

import UIKit
import CoreMotion // ACCELROMETER
import CoreLocation //GPS ETC
import MapKit

class ViewController: UIViewController , CLLocationManagerDelegate{
    
    let motionManager = CMMotionManager()
    let locationMgr = CLLocationManager()
    @IBOutlet weak var mapView: MKMapView!
    
    var timer: Timer!
    var pin: MKPointAnnotation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationMgr.delegate = self
        
        locationMgr.requestWhenInUseAuthorization()
        locationMgr.startUpdatingLocation()
        
        if (motionManager.isAccelerometerAvailable && motionManager.isAccelerometerActive){
            print("Acc Present and active")
        }else{
            print("Acc status: active=\(motionManager.isAccelerometerActive ),available=\(motionManager.isAccelerometerAvailable)")
        }
        
        timer = Timer(timeInterval: 3.0, repeats: true, block: { (timer) in
            self.update()
        })
    }
    
    
    @objc func update(){
        if let accData = motionManager.accelerometerData{
            print(accData)
        }else{
            print("No data available")
        }
        print("Update called")
    }

    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        
        // Find where we are
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(location, completionHandler: {(placemarks, err) in
            if let pls = placemarks {
                for p in pls {
                    let desc = p.description
                    print(desc)
                }
            } else {
                print(location)
            }
        })
        
        // Create new annotation or update existing one
        if let myPin = pin {
            myPin.coordinate = location.coordinate
        } else {
            let newPin = MKPointAnnotation()
            newPin.coordinate = location.coordinate
            mapView.addAnnotation(newPin)
            pin = newPin
        }
        
        //mapView.setRegion(MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000), animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        print("Visit:\(visit.coordinate)")
    }
}
