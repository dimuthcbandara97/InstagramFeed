//
//  PostActionCell.swift
//  InstagramFeed
//
//  Created by Dimuth Bandara on 2023-02-28.
//

import UIKit

class PostActionCell: UICollectionViewCell {
    
    static let identifier = "PostActionCell"
    
    let hearImageView = UIImageView()
    let commentImageView = UIImageView()
    let shareImageView = UIImageView()
    let saveImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("inti(coder:) has not been implemented")
    }
    
    private func configureUI(){
        
        // heart image view
        addSubview(hearImageView)
        hearImageView.translatesAutoresizingMaskIntoConstraints = false
        hearImageView.tintColor = .label
        hearImageView.contentMode = .scaleAspectFill
        hearImageView.image = UIImage(systemName: "heart")
        
        // comment image view
        addSubview(commentImageView)
        commentImageView.translatesAutoresizingMaskIntoConstraints = false
        commentImageView.tintColor = .label
        commentImageView.image = UIImage(systemName: "message")
        
        // share image view
        addSubview(shareImageView)
        shareImageView.translatesAutoresizingMaskIntoConstraints = false
        shareImageView.tintColor = .label
        commentImageView.image = UIImage(systemName: "paperplane")
        
        // save image view
        addSubview(saveImageView)
        saveImageView.translatesAutoresizingMaskIntoConstraints = false
        saveImageView.tintColor = .label
        let config = UIImage.SymbolConfiguration(weight: .ultraLight)
        saveImageView.image = UIImage(systemName: "bookmark",withConfiguration: config)
        
        NSLayoutConstraint.activate([
        
            // heart image view
            
            hearImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            hearImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            hearImageView.widthAnchor.constraint(equalToConstant: 32),
            hearImageView.heightAnchor.constraint(equalToConstant: 32),
            
            // comment image view
            commentImageView.leadingAnchor.constraint(equalTo: hearImageView.trailingAnchor, constant: 12),
            commentImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            commentImageView.widthAnchor.constraint(equalToConstant: 32),
            commentImageView.heightAnchor.constraint(equalToConstant: 32),
            
            // share image view
            shareImageView.leadingAnchor.constraint(equalTo: commentImageView.trailingAnchor, constant: 12),
            shareImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            shareImageView.widthAnchor.constraint(equalToConstant: 12),
            shareImageView.heightAnchor.constraint(equalToConstant: 12),
            
            // save image view
            saveImageView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -12),
            saveImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            saveImageView.widthAnchor.constraint(equalToConstant: 32),
            saveImageView.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
}
