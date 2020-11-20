//
//  HomeViewController.swift
//  LaunchScreenAnimation
//
//  Created by Ngo Dang tan on 20/11/2020.
//

import UIKit

class HomeViewController: UIViewController {

    let label:UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        label.text = "Hello"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24,weight: .bold)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.center = view.center
        view.backgroundColor = .systemBackground
    }


}
