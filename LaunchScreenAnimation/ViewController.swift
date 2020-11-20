//
//  ViewController.swift
//  LaunchScreenAnimation
//
//  Created by Ngo Dang tan on 20/11/2020.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
       let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
 
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.animate()
        }
    }
    
    private func animate(){
        UIView.animate(withDuration: 1) {
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            self.imageView.frame = CGRect(x: -(diffX/2) , y: diffY/2 , width: size, height: size)
            self.imageView.alpha = 0
            
        }
   
        UIView.animate(withDuration: 1.5, animations: {
            self.imageView.alpha = 0
        }) { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    let viewController = HomeViewController()
                    viewController.modalTransitionStyle = .crossDissolve
                    viewController.modalPresentationStyle = .fullScreen
                    self.present(viewController, animated: true)
                }
            }
            
        }
        
    
    }


}

