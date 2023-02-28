//
//  ViewController.swift
//  InstagramFeed
//
//  Created by Dimuth Bandara on 2023-02-22.
//

import UIKit


class ViewController: UIViewController {
    
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        
        configureCollectionView()
    }

    private func configureCollectionView() {
        let collectionView  = UICollectionView(frame: view.bounds, collectionViewLayout: createFlowLayout())
        view.addSubview(collectionView)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "header")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "story")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "feed")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        
        self.collectionView = collectionView
    }
    
    private func createFlowLayout() -> UICollectionViewLayout {
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }

    
    
}

