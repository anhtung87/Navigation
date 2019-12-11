//
//  ProductView.swift
//  Navigation
//
//  Created by Hoang Tung on 12/11/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ProductView: UIView {

    var imageView: UIImageView!
    var label: UILabel!
    
    convenience init(image: Image, radius: CGFloat, index: Int) {
        if index % 2 == 0 {
            self.init(frame: CGRect(x: 0, y: CGFloat(index / 2) * radius, width: radius, height: radius))
        } else {
            self.init(frame: CGRect(x: radius, y: CGFloat(index / 2) * radius, width: radius, height: radius))
        }
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: radius, height: radius))
        imageView.image = UIImage(named: image.name)
        label = UILabel(frame: CGRect(x: 0, y: radius / 4 * 3, width: radius, height: radius / 4))
        label.text = image.label
        label.textAlignment = .right
        label.textColor = .systemOrange
        label.font = .boldSystemFont(ofSize: 28)
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        self.addSubview(imageView)
        self.addSubview(label)
        
    }

}
