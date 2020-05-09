//
//  ViewController.swift
//  test_demo_ios
//
//  Created by why on 2020/4/13.
//  Copyright © 2020 why. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .custom);
        button.addTarget(self, action: #selector(showFlutterVC), for: UIControl.Event.touchUpInside);
        button.setTitle("展示Flutter", for: .normal);
        button.frame = CGRect(x: 100, y: 100, width: 120, height: 50);
        button.backgroundColor = UIColor.red;
        self.view.addSubview(button);
    }
    
    @objc func showFlutterVC() {
        // 创建FlutterViewController
        let engine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine;
        let flutterVC = FlutterViewController(engine: engine, nibName: nil, bundle: nil);
        flutterVC.modalPresentationStyle = .fullScreen;
        
        // Modal弹出
        present(flutterVC, animated: true, completion: nil);
    }
}

