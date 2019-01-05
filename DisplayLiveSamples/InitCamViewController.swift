//
//  InitCamViewController.swift
//  C++_iOS Camera
//
//  Created by Devi Prasad Tripathy on 04.01.2019.
//  Copyright © 2019 Devi Prasad Tripathy. All rights reserved.
//


import UIKit

class InitCamViewController: UIViewController {

    @IBOutlet weak var startCam: UIButton!
    @IBOutlet weak var coreMLButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func initCoreML(_ sender: Any) {
       performSegue(withIdentifier: "goToCoreML", sender: self)
    }
    @IBAction func initCam(_ sender: Any) {
        performSegue(withIdentifier: "goToCamera", sender: self)
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
