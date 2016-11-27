//
//  ViewController.swift
//  BeaconFrameworkSample
//
//  Created by leo.chang on 26/11/2016.
//  Copyright © 2016 sw168. All rights reserved.
//

import UIKit
import SWBeaconFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func openTargetListButtonPressed(_ sender: Any?) {
        presentTargetList()
    }
    
    @IBAction func openPlayerButtonPressed(_ sender: Any?) {
        presentPlayer()
    }
    
    func presentTargetList() {
        let vc = SWTargetListViewController.newInstance()
        let nav = UINavigationController(rootViewController: vc)
        present(nav, animated: true, completion: nil)
    }
    

    func presentPlayer() {
        let url = "rtsp://211.75.138.248:554/user=admin_password=tlJwpbo6_channel=1_stream=0.sdp?real_stream"
        let vc = SWPlayerViewController(videoUrl: URL(string: url)!)
        let nav = UINavigationController(rootViewController: vc)
        present(nav, animated: true, completion: nil)
    }
}

