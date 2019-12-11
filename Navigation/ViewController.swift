//
//  ViewController.swift
//  Navigation
//
//  Created by Hoang Tung on 12/7/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

struct Image {
    var name: String
    var label: String
}

class ViewController: UIViewController {
    
    var bigVIew: UIView = {
        let bigView = UIView(
            frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        bigView.backgroundColor = .white
        return bigView
    }()
    
    var images: [Image] = {
        var images: [Image] = []
        for i in 1...11 {
            images.append(Image(name: String(i), label: String(i)))
        }
        return images
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let horizontalScrollView = UIScrollView(frame: CGRect(x: 32, y: 64,
                                                              width: UIScreen.main.bounds.width - 64,
                                                              height: (UIScreen.main.bounds.width - 64) / 3))
        horizontalScrollView.isPagingEnabled = true
        
        for i in 0..<images.count {
            let image = LogoView(image: images[i], radius: (UIScreen.main.bounds.width - 64) / 3, index: i)
            image.contentMode = .scaleAspectFit
            horizontalScrollView.addSubview(image)
        }
        
        horizontalScrollView.contentSize = CGSize(width: CGFloat(images.count) * (UIScreen.main.bounds.width - 64) / 3,
                                                  height: (UIScreen.main.bounds.width - 64) / 3)
        
        self.view.addSubview(bigVIew)
        bigVIew.addSubview(horizontalScrollView)
        
        let verticalScrollView = UIScrollView(frame: CGRect(
            x: 32,
            y: 32 + (UIScreen.main.bounds.width - 64) / 3 + 64,
            width: UIScreen.main.bounds.width - 64,
            height: UIScreen.main.bounds.height - 64 - (UIScreen.main.bounds.width - 64) / 3 - 64
        ))
        
        for i in 0..<images.count {
            let image = ProductView(image: images[i], radius: (UIScreen.main.bounds.width - 64) / 2, index: i)
            image.contentMode = .scaleAspectFit
            verticalScrollView.addSubview(image)
        }
        
        verticalScrollView.contentSize = CGSize(
            width: (UIScreen.main.bounds.width - 64) / 3,
            height: (CGFloat(images.count) / 2).rounded(.up) * (UIScreen.main.bounds.width - 64) / 2)
        
        bigVIew.addSubview(verticalScrollView)
    }


}

