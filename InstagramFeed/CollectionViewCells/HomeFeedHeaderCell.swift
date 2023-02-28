//
//  HomeFeedHeaderCell.swift
//  InstagramFeed
//
//  Created by Dimuth Bandara on 2023-02-28.
//

import UIKit

class HomeFeedHeaderCell: UICollectionViewCell {
    static let identifier = "HomeFeedHeaderCell"
    
    
    let logoImageView = UIImageView()
    let addImageView = UIImageView()
    let heartImageView = UIImageView()
    let messageImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("inti(coder:) has not been implemented")
    }
    
    private func configureUI(){
        
        // logo
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.image = UIImage(named: "hello")
        
        // Add Image
        addSubview(addImageView)
        addImageView.translatesAutoresizingMaskIntoConstraints = false
        addImageView.contentMode = .scaleAspectFit
        addImageView.image = UIImage(systemName: "plus.square.dashed")
        addImageView.tintColor = .label
        
        // Heart Image
        addSubview(heartImageView)
        heartImageView.translatesAutoresizingMaskIntoConstraints = false
        heartImageView.contentMode = .scaleAspectFit
        heartImageView.image = UIImage(systemName: "heart")
        heartImageView.tintColor = .label
        
        // MessageImage
        addSubview(messageImageView)
        messageImageView.translatesAutoresizingMaskIntoConstraints = false
        messageImageView.contentMode = .scaleAspectFit
        messageImageView.image = UIImage(systemName: "message")
        messageImageView.tintColor = .label
        
        // layout constraints
        NSLayoutConstraint.activate([
            
            // logo image view
            logoImageView.topAnchor.constraint(equalTo: topAnchor,constant: 12),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            logoImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            logoImageView.widthAnchor.constraint(equalToConstant: 150),
            
            // add image view
            addImageView.centerYAnchor.constraint(equalTo: logoImageView.centerYAnchor),
            addImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            addImageView.widthAnchor.constraint(equalToConstant: 32),
            addImageView.heightAnchor.constraint(equalToConstant: 32),
            
            // heart image view
            heartImageView.centerYAnchor.constraint(equalTo: logoImageView.centerYAnchor),
            heartImageView.leadingAnchor.constraint(equalTo: addImageView.trailingAnchor, constant: 8),
            heartImageView.widthAnchor.constraint(equalToConstant: 32),
            heartImageView.heightAnchor.constraint(equalToConstant: 32),
            
            // message image view
            messageImageView.centerYAnchor.constraint(equalTo: logoImageView.centerYAnchor),
            messageImageView.leadingAnchor.constraint(equalTo: heartImageView.trailingAnchor, constant: 8),
            messageImageView.widthAnchor.constraint(equalToConstant: 32),
            messageImageView.heightAnchor.constraint(equalToConstant: 32),
        ])
        
    }
}
