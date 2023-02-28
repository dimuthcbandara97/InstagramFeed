//
//  PostComentSectionCell.swift
//  InstagramFeed
//
//  Created by Dimuth Bandara on 2023-02-28.
//

import UIKit

class PostComentSectionCell: UICollectionViewCell {
    
    
    static let identifier = "PostComentSectionCell"
    
    let commentorusernamelabel = UILabel()
    let commentorcaptionlabel = UILabel()
    let morelabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("inti(coder:) has not been implemented")
    }
    
    private func configureUI(){
        
        // commentor name
        addSubview(commentorusernamelabel)
        commentorusernamelabel.translatesAutoresizingMaskIntoConstraints = false
        commentorusernamelabel.font = .systemFont(ofSize: 14, weight: .semibold)
        commentorusernamelabel.text = "Hello World"
        
        // commentor caption
        addSubview(commentorcaptionlabel)
        commentorcaptionlabel.translatesAutoresizingMaskIntoConstraints = false
        commentorcaptionlabel.font = .systemFont(ofSize: 14,weight: .regular)
        commentorcaptionlabel.text = "Hellowwww"
        
        // view all comments
        addSubview(morelabel)
        morelabel.translatesAutoresizingMaskIntoConstraints = false
        morelabel.font = .systemFont(ofSize: 14, weight: .regular)
        morelabel.text = "View All Comments"
        morelabel.textColor = .systemGray
        
        NSLayoutConstraint.activate([
            commentorusernamelabel.topAnchor.constraint(equalTo: topAnchor),
            commentorusernamelabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 8),
            
            commentorcaptionlabel.topAnchor.constraint(equalTo: topAnchor),
            commentorcaptionlabel.leadingAnchor.constraint(equalTo: commentorusernamelabel.trailingAnchor, constant: 12),
            
            morelabel.topAnchor.constraint(equalTo: commentorusernamelabel.bottomAnchor, constant: 8),
            morelabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 8)
        ])
    }
}
