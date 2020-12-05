# LaunchScreenAnimation
![Sample](https://i.imgur.com/fNtuD55l.png)
![Sample](https://i.imgur.com/IhAtlnol.png)

```swift
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
        }) { [weak self]done in
            guard let self = self else {return}
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
```
