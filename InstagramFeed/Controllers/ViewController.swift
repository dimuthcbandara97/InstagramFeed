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
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnv in
            if sectionIndex == 0 {
                return self.createHeaderLayout()
            } else if sectionIndex == 1 {
                return self.createStoryLayout()
            } else {
                return self.createFeedLayout()
            }
        }
        return layout
    }
    // Header Layout
    private func createHeaderLayout() -> NSCollectionLayoutSection {
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(100))
        let headerItem = NSCollectionLayoutItem(layoutSize: itemSize
        )
        // group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(100))
        let headerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem:  headerItem, count: 1)
        // section
        let headerSection = NSCollectionLayoutSection(group:  headerGroup)
        
        return headerSection
    }
    
    // Story Layout
    private func createStoryLayout() -> NSCollectionLayoutSection {
        
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(64), heightDimension: .absolute(64))
        let storyItem = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(80))
        let stroyGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: storyItem, count: 1)
        
        // section
        let storySection = NSCollectionLayoutSection(group: stroyGroup)
        
        return storySection
    }
    
    
    // Feed Layout
    private func createFeedLayout() -> NSCollectionLayoutSection {
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    // collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "header", for: indexPath)
            return cell
        } else if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "story", for: indexPath)
            return cell
        } else  {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "feed", for: indexPath)
            return cell
        }
    }

    
    
}

