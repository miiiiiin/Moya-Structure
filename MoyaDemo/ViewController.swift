//
//  ViewController.swift
//  MoyaDemo
//
//  Created by Liu Yang on 2018/5/4.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 仅仅是展示,api没有配置
        // just display, api not config
        
//        NetworkManager<HomeModel>().requestModel(MallAPI.getMallHome, completion: { (response) in
//            let home = response?.data
//        }) { (error) in
//            if let msg = error.message {
//                print(msg)
//            }
//        }

        NetworkManager<LoginEmailRequest>().requestModel(MallAPI.loginEmail(email: "kate@last30min.com", pw: "alsthdrud32", regId: "dREbJqxqEAs:APA91bFdzGOOiPrRncIq6Prkwv6fd9FYLVYk11sbr62iAshiW5PuI7HaQEXxd5W9IKhhhuvVv3eGwT9QO4xDvP83e09dCjZjdhP_zEuj9Cyr9pmtN8I0aNppFQHUD3kkgGtK_Bo5oo0B"), completion: { (response) in
            let data = response?.data
            
            print("data : \(data)")
            
        }) { (error) in
            if let msg = error.message {
                print(msg)
            }
        }
        
//        NetworkManager<GoodsModel>().requestListModel(MallAPI.getGoodsList, completion: { (response) in
//            let goods = response?.dataList
//            let page = response?.page
//        }) { (error) in
//            if let msg = error.message {
//                print(msg)
//            }
//        }
    }
}

