//
//  PostCaptionCell.swift
//  InstagramFeed
//
//  Created by Dimuth Bandara on 2023-02-28.
//

import UIKit

class PostCaptionCell: UICollectionViewCell {
    static let identifier = "PostCaptionCell"
    
    let usernamelabel = UILabel()
    let captionlabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("inti(coder:) has not been implemented")
    }
    
    private func configureUI(){
        
        // User name labe
        addSubview(usernamelabel)
        usernamelabel.translatesAutoresizingMaskIntoConstraints = false
        usernamelabel.font = .systemFont(ofSize: 14, weight: .semibold)
        usernamelabel.text = "Dimuth"
        
        // caption label
        addSubview(captionlabel)
        captionlabel.translatesAutoresizingMaskIntoConstraints = false
        captionlabel.font = .systemFont(ofSize: 14,weight: .regular)
        captionlabel.text = "COBSCCOMP212P-002"
        
        NSLayoutConstraint.activate([
            usernamelabel.topAnchor.constraint(equalTo: topAnchor ),
            usernamelabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 8),
            
            captionlabel.topAnchor.constraint(equalTo: topAnchor),
            captionlabel.leadingAnchor.constraint(equalTo: usernamelabel.trailingAnchor, constant: 4)
        ])
    }
}
