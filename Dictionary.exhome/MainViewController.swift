//
//  MainViewController.swift
//  Dictionary.exhome
//
//  Created by Lam dai ka on 10/1/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var inputWordTf: UITextField!
    @IBOutlet weak var outputResultTf: UITextField!
    @IBOutlet weak var ketquaLbl: UILabel!
    
    ////    Khởi tạo dữ liệu các từ có trong từ điển
    let database1:Dictionary = ["Hello":"xin chào",
                                "Everyone":"mọi người",
                                "I":"tôi",
                                "like":"thích",
                                "footbal":"bóng đá",
                                "and":"và",
                                "read":"đọc",
                                "book":"sách",
                                "English":"tiếng Anh",
                                "bye":"tạm biệt",  ]

    
    @IBAction func clickViewButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
//        lấy dữ liệu từ inputWord textfield
        let inputWord = self.inputWordTf.text
//      lấy dữ liệu từ inputword trong từ điển

       

        for (TA,TV) in database1 {
           if inputWord == TA   {
            self.outputResultTf.text = "\(TV)"
           return
            }
        }
                let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Không có trong từ điển", preferredStyle: UIAlertController.Style.alert)
                    present(alert, animated: true, completion: nil)
                let btnOk:UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
                    alert.addAction(btnOk)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
