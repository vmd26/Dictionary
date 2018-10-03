//
//  ViewController.swift
//  Dictionary.exhome
//
//  Created by Lam dai ka on 10/1/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!

    //        Tạo dữ liệu mật khẩu, tên đăng nhập bằng đối tượng Dictionary
    let database : Dictionary<String,String> = ["username" : "Duc" , "password" : "2"]
    
    @IBAction func clickLoginButton(_ sender: Any) {


    }
    @IBAction func ClickLoginButton2(_ sender: Any) {
        //        Kiểm tra mật khẩu xem có trùng khớp không
        //        Lấy dữ liệu từ usernameTf
        let userName = self.usernameTf.text
        //        lấy dữ liệu tên đăng nhập trong từ điển đã tạo
        let localUserName = self.database["username"]
        //        Lấy dữ liệu từ password textfield
        let passWord = self.passwordTf.text
        //        lấy dữ liệu mật khẩu trong từ điển đã tạo
        let localPassWord = self.database["password"]
        //        so sánh đăng nhập
        guard userName == localUserName else {
            //        Nếu không trùng khớp thì tạo ra thông báo "Tên đăng nhập không đúng"
//            Tạo biến alert để hiển thị
            let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Tên đăng nhập không đúng", preferredStyle: UIAlertController.Style.alert)
//            Hiện lên alert
            present(alert, animated: true, completion: nil)
//            Tạo nút btnOk để tắt alert
            let btnOk:UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
//            gắn nút btnOk vào alert
            alert.addAction(btnOk)
            return
            
        }
        //        so sánh mật khẩu
        guard passWord == localPassWord else {
            //        Nếu không trùng khớp thì hiện thông báo "Mật khẩu không đúng"
             let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Mật khẩu không đúng", preferredStyle: UIAlertController.Style.alert)
               present(alert, animated: true, completion: nil)
              let btnOk:UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
             alert.addAction(btnOk)
            return
        }
        //        Nếu chính xác cả mật khẩu và tên đăng nhập thì chuyển sang màn hình chính
        
        self.performSegue(withIdentifier: "showMain", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

