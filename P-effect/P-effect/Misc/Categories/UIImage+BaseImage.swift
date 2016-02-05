//
//  UIImage+BaseImage.swift
//  P-effect
//
//  Created by Jack Lapin on 02.02.16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit

extension UIImage {
    
    public class func appBackButton() -> UIImage? {
        return UIImage(named: "backArrow")
    }
    
    public class func placeholderImage() -> UIImage? {
        return UIImage(named: "Placeholder")
    }
    
    public class func avatarPlaceholderImage() -> UIImage? {
        return UIImage(named: "profile_placeholder.png")
    }
    
    public class func appAddPhotoButton() -> UIImage? {
        return UIImage(named: "btnMakeAPhoto")
    }
    
    public class func imageFromColor(color: UIColor, size: CGSize) -> UIImage? {
        let rect = CGRectMake(0.0, 0.0, size.width, size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
