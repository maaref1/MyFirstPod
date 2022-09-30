//
//  MUIButtonRed.swift
//  MyFirstPod
//
//  Created by khalil on 29/09/2022.
//

import UIKit

@IBDesignable
open class MUIButton: UIButton {
    
    var imgView: UIImageView?
    
    
    @IBInspectable
    var borderColor : UIColor? = .clear {
        didSet{
            self.layer.borderColor = self.borderColor?.cgColor
        }
    }
    
    @IBInspectable
    var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = self.borderWidth
        }
    }
    
    @IBInspectable
    var cornorRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = self.cornorRadius
        }
    }
    
    @IBInspectable
    var textAlign : Int = 0 {
        didSet{
            self.drawTextAlignement()
            //self.setWidthForView()
        }
    }
    
    func setWidthForView() {
        //let cons = self.constraints
        /*for con in cons {
         if con.identifier == "widthButton" {
         let intW = self.intrinsicContentSize.width
         let padW = self.frame.size.width * imgPaddingRight
         con.constant = intW + padW
         }
         }*/
    }
    
    @IBInspectable
    var imgToRight: Int = 0 {
        didSet {
            if (self.imgToRight == 1) {
                self.placeImageToTheRight(stat: true)
            } else {
                self.placeImageToTheRight(stat: false)
            }
        }
    }
    
    @IBInspectable
    var imgPaddingRight: CGFloat = 0 {
        didSet {
            if self.img != nil {
                self.addImageToRight()
            }
        }
    }
    
    func addImageToRight() {
        placeImageToTheRight(stat: false)
    }
    
    func placeImageToTheRight(stat: Bool) {
        if self.img != nil {
            self.imgView =  UIImageView()
            self.imgView!.image = self.img
            self.imgView!.tag = 100
            
            self.addSubview(self.imgView!)
            self.imgView!.contentMode = .scaleAspectFit
            self.contentVerticalAlignment = .center
            self.titleLabel?.adjustsFontSizeToFitWidth = true
            let pad = self.frame.size.width * self.imgPaddingRight
            self.imgView!.widthAnchor.constraint(equalToConstant: pad).isActive = true
            if stat {
                self.titleEdgeInsets.right = pad
                //self.titleLabel?.textAlignment = .center
            } else {
                let pad = self.frame.size.width * imgPaddingRight + 10
                self.titleEdgeInsets.left = pad + 5
                self.titleEdgeInsets.right = 5
                self.titleEdgeInsets.bottom = 5
            }
        }
    }
    
    @IBInspectable
    var imgHeight: CGFloat = 0 {
        didSet {
            guard self.imgView != nil else {
                return
            }
            self.imgView!.heightAnchor.constraint(equalToConstant: self.imgHeight).isActive = true
        }
    }
    
    @IBInspectable
    var img: UIImage? = nil {
        didSet {
            self.addImageToRight()
        }
    }
    
    @IBInspectable
    var shadowColor : UIColor? {
        didSet {
            self.layer.shadowColor = self.shadowColor?.cgColor
            self.layer.contentsCenter = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
            self.layer.shadowRadius = self.cornorRadius
            self.layer.shadowOffset =  CGSize(width: -1, height: 1)
            self.layer.shadowOpacity = 0.2
            self.layer.masksToBounds = false
            
            //self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
            self.layer.shouldRasterize = true
            let scale = true
            self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
            
        }
    }
    
    open override func draw(_ rect: CGRect) {
        
        self.layer.shadowColor = self.shadowColor?.cgColor
        self.layer.contentsCenter = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        self.layer.shadowRadius = self.cornorRadius
        self.layer.shadowOffset =  CGSize(width: -1, height: 1)
        self.layer.shadowOpacity = 0.2
        self.layer.masksToBounds = false
        
        //self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        let scale = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
        
        self.drawBorderWithRadius()
        self.drawTextAlignement()
        
        guard self.img != nil else {
            return
        }
        self.addImageToRight()
    }
    
    func drawTextAlignement() {
        switch self.textAlign {
        case 0:
            self.contentHorizontalAlignment = .center
            self.contentVerticalAlignment = .center
        case 1:
            self.titleEdgeInsets.right = 0
            self.contentHorizontalAlignment = .left
        case 2:
            self.contentHorizontalAlignment = .right
            self.titleEdgeInsets.left = 0
            self.titleEdgeInsets.right = self.frame.size.width * imgPaddingRight + (UIScreen.main.bounds.width * 5 / 100)
        default:
            print("unhandled textPosition")
        }
    }
    
    
    func drawBorderWithRadius() {
        self.layer.cornerRadius = self.cornorRadius
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor?.cgColor
    }
}
