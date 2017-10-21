//
//  MenuCell.swift
//  YouTube App
//
//  Created by PoGo on 10/21/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.tintColor = UIColor.rgb(91, green: 14, blue: 13)
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
        
        
        
    }()
    
    override var isHighlighted: Bool{
        didSet{
            imageView.tintColor = isHighlighted ? UIColor.white : UIColor.rgb(91, green: 14, blue: 13)
        }
        
    }
    
    override var isSelected: Bool{
        didSet{
            imageView.tintColor = isSelected ? UIColor.white : UIColor.rgb(91, green: 14, blue: 13)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("FatalError MenuCell")
    }
    
    func setupViews(){
        backgroundColor = UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
        addSubview(imageView)
        
        imageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
    }
    
    
}
