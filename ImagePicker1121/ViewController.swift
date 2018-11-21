//
//  ViewController.swift
//  ImagePicker1121
//
//  Created by 503-12 on 21/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBAction func pick(_ sender: Any) {
        //앨범 출력
        var imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        
        //미리 촬영한 이미지 가져오기
        imagePicker.sourceType = .photoLibrary
        
        //delegate 메소드 위치 설정
        imagePicker.delegate = self
        
        //화면에 출력
        self.present(imagePicker, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    //취소를 눌렀을 때 호출되는 메소드
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        //현재 창을 닫고
        self.dismiss(animated: false){
            () in
            let alert = UIAlertController(title: "선택 취소", message: "사진 선택을 취소하였습니다.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel){
                (alert) in
            })
            self.present(alert, animated: true)
        }
    }
    
    //사진을 선택했을 떄 호출되는 메소드
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        picker.dismiss(animated: true){
            ()in
            //선택한 이미지를 가져와서 imgView에 출력
            let img = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
            self.imgView.image = img
        }
    }
}
