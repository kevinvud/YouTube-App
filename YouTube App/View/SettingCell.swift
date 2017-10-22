//
//  SettingCell.swift
//  YouTube App
//
//  Created by PoGo on 10/22/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class SettingCell: UICollectionViewCell {
    
    override var isHighlighted: Bool{
        didSet{
            backgroundColor = isHighlighted ? UIColor.darkGray : UIColor.white
            nameLabel.textColor = isHighlighted ? UIColor.white : UIColor.black
            imageView.tintColor = isHighlighted ? UIColor.white: UIColor.darkGray
            
        }
    }
    
    var setting: MenuSettingItems? {
        didSet{
            if let name = setting?.name{
                nameLabel.text = name
            }
            if let imageName = setting?.imageName{
                imageView.image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
                imageView.tintColor = UIColor.darkGray
            }
            
        }
    }
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Setting"
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "settings")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("fatal error at setting cell")
    }
    
    func setupViews() {
        
        addSubview(nameLabel)
        addSubview(imageView)
        
        
        nameLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
        imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    
    
    
}
