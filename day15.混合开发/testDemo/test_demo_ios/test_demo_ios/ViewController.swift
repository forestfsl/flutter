//
//  ViewController.swift
//  test_demo_ios
//
//  Created by apple on 2020/5/9.
//  Copyright © 2020 fly. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 1.创建一个按钮
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        button.setTitle("Show Flutter", for: .normal)
        button.frame = CGRect(x: 80, y: 210, width: 160, height: 40)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }
    @objc func showFlutter() {
           // 2.创建FlutterViewController对象（需要先获取flutterEngine）
//           let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine;
//           let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil);
        let flutterViewController = FlutterViewController(nibName: nil, bundle: nil);
        flutterViewController.modalPresentationStyle = .fullScreen;
        flutterViewController.setInitialRoute("home");
        present(flutterViewController, animated: true, completion: nil);
       }

}

