//
//  ViewController.swift
//  WebData1116
//
//  Created by 503-12 on 16/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 이미지뷰: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //문자열을 가져올 url을 생성
        let url = URL(string: "https://www.google.com")
        
        //데이터 가져오기
        let data = try! Data(contentsOf: url!)
        
        //콘솔에 출력
        //print(data)
        
        let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        //print(result)
        
        //파일 매니저 객체를 생성
        let fm = FileManager.default
        //도큐먼트 디렉토리 경로를 생성
        let dirPaths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docDir = dirPaths[0]
        //파일 경로를 생성
        let filePath = docDir + "/tanghuroo2.jpg"
        
        //파일이 없다면
        if fm.fileExists(atPath: filePath) == false{
            //이미지 파일의 내용을 다운로드 받기
            let imgAddr = "http://recipe1.ezmember.co.kr/cache/recipe/2018/04/05/890bd5a6edee83d90cddf312a98c209c1.jpg"
            var imageUrl = URL(string: imgAddr)
            let imageData = try! Data(contentsOf: imageUrl!)
            
            //다운로드 받은 데이터로 파일을 생성
            fm.createFile(atPath: filePath, contents: imageData, attributes: nil)
            print("다운로드")
        }
        
        //파일을 읽기
        let dataBuffer = fm.contents(atPath: filePath)
       
        //이미지 데이터로 변환
        let img = UIImage(data: dataBuffer!)
        
        //화면에 출력
        이미지뷰.image = img
        
    }
}

