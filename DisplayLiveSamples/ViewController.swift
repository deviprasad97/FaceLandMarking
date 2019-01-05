//
//  ViewController.swift
//  C++_iOS Camera
//
//  Created by Devi Prasad Tripathy on 04.01.2019.
//  Copyright © 2019 Devi Prasad Tripathy. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    let sessionHandler = SessionHandler()
    
    @IBOutlet weak var preview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        sessionHandler.openSession()
        

        let layer = sessionHandler.layer
        //flip up-and-down because position turns into back edit
        //self.view.layer.setAffineTransform(CGAffineTransform(scaleX: 1, y: -1))
        layer.frame = preview.bounds
        //set the layer filled with the entire screen
        layer.videoGravity = AVLayerVideoGravityResizeAspectFill

        preview.layer.addSublayer(layer)
        
        view.layoutIfNeeded()

    }
    
    //    var lastUpdateTime: TimeInterval = 0
    //    func update(currentTime:TimeInterval){
    //        let delta = currentTime - lastUpdateTime
    //        let currentFPS = 1/delta
    //        print("currentFPS\(currentFPS).")
    //        lastUpdateTime = currentTime
    //    }

}

