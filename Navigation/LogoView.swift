//
//  ProductImageView.swift
//  Navigation
//
//  Created by Hoang Tung on 12/7/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class LogoView: UIView {
    
    var imageView: UIImageView!
    var label: UILabel!

    convenience init(image: Image, radius: CGFloat, index: Int) {
        self.init(frame: CGRect(x: CGFloat(index) * radius, y: 0, width: radius, height: radius))
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
