//
//  PostHeaderCell.swift
//  InstagramFeed
//
//  Created by Dimuth Bandara on 2023-02-28.
//

import UIKit

class PostHeaderCell: UICollectionViewCell {
    
    static let identifier = "PostHeaderCell"
    
    let userProfilePictureImageView = UIImageView()
    let usernameLabel = UILabel()
    let moreImageView = UIImageView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("inti(coder:) has not been implemented")
    }
    
    private func configureUI(){
        
        // user profile picture view
        addSubview(userProfilePictureImageView)
        userProfilePictureImageView.translatesAutoresizingMaskIntoConstraints = false
        userProfilePictureImageView.contentMode = .scaleToFill
        userProfilePictureImageView.clipsToBounds = true
        userProfilePictureImageView.layer.cornerRadius = 16
        userProfilePictureImageView.image = UIImage(named: "mars")
        
        // user name labrl
        addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        usernameLabel.text = "Dimuth"
        
        // more image view
        addSubview(moreImageView)
        moreImageView.translatesAutoresizingMaskIntoConstraints = false
        moreImageView.contentMode = .scaleAspectFit
        moreImageView.image = UIImage(systemName: "ellipsis")
        moreImageView.tintColor = .label
        
        // layout section
        NSLayoutConstraint.activate([
            
            // user profile picture
            userProfilePictureImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            userProfilePictureImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            userProfilePictureImageView.widthAnchor.constraint(equalToConstant: 32),
            userProfilePictureImageView.heightAnchor.constraint(equalToConstant: 32),
            
            // user name label
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: userProfilePictureImageView.trailingAnchor,constant: 25),
            
            // Image View
            moreImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            moreImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            moreImageView.widthAnchor.constraint(equalToConstant: 28),
            moreImageView.heightAnchor.constraint(equalToConstant: 28 )
        ])
        
    }
}
