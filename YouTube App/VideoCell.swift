//
//  VideoCell.swift
//  YouTube App
//
//  Created by PoGo on 10/21/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        let imageName = UIImage(named: "taylor_swift_blank_space")
        imageView.image = imageName
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
        
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.purple
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
        
    }()
    
    let subtitleTextView: UITextView = {
       let tv = UITextView()
        tv.backgroundColor = UIColor.red
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
  
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("fatal Error")
    }
    
    func setupViews(){
        addSubview(thumbnailImageView)
        addSubview(separatorView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subtitleTextView)
        
        thumbnailImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        thumbnailImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        thumbnailImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        thumbnailImageView.bottomAnchor.constraint(equalTo: userProfileImageView.topAnchor, constant: -8).isActive = true
        
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        userProfileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        userProfileImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        userProfileImageView.bottomAnchor.constraint(equalTo: separatorView.topAnchor, constant: -16).isActive = true
        userProfileImageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        
        titleLabel.leftAnchor.constraint(equalTo: userProfileImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        titleLabel.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        
        subtitleTextView.bottomAnchor.constraint(equalTo: separatorView.topAnchor, constant: -16).isActive = true
        subtitleTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        subtitleTextView.leftAnchor.constraint(equalTo: userProfileImageView.rightAnchor, constant: 8).isActive = true
        subtitleTextView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
    }

}
