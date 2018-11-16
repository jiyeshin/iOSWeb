//
//  ViewController.swift
//  WebData1116
//
//  Created by 503-12 on 16/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //문자열을 가져올 url을 생성
        let url = URL(string: "https://www.google.com")
        
        //데이터 가져오기
        let data = try! Data(contentsOf: url!)
        
        //콘솔에 출력
        //print(data)
        
        let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        print(result)
    }
}

