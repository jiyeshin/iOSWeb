//
//  ViewController.swift
//  AlamofireTest1120
//
//  Created by 503-12 on 20/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = Alamofire.request("https://krjiyeah.dothome.co.kr", method:.get, parameters:nil)
        request.response{
            response in
            let msg = NSString(data:response.data!, encoding:String.Encoding.utf8.rawValue)
            print(msg)
        }
        
    }


}

