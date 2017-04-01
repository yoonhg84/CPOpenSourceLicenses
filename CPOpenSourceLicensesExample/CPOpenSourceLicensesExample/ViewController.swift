//
//  ViewController.swift
//  CPOpenSourceLicensesExample
//
//  Created by Chope on 2017. 4. 1..
//  Copyright © 2017년 ChopeIndustry. All rights reserved.
//

import UIKit
import CPOpenSourceLicenses

class ViewController: UIViewController {

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


        let vc = CPOpenSourceLibrariesViewController()
        vc.openSourceList = [
                CPOpenSource(title: "Alamofire", license: .mit(year: "2014-2016", fullname: "Alamofire Software Foundation (http://alamofire.org/)")),
                CPOpenSource(title: "Realm", license: .apacheLicense2),
                CPOpenSource(title: "Wire", license: .gnuGPLv3(project: nil, year: nil, fullname: nil, nameOfAuthor: nil)),
        ]
        present(UINavigationController(rootViewController: vc), animated: true)
    }

}

