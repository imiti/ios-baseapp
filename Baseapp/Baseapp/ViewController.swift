//
//  ViewController.swift
//  Baseapp
//
//  Created by James Coggan on 07/10/2016.
//  Copyright © 2016 James Coggan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getUser(_ sender: UIButton) {
        var restClient = RestClient()
        restClient.requestUser()
        .subscribe(onNext: {
            user in
            print(user.name)
        })
    }
}

