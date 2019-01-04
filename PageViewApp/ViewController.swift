//
//  ViewController.swift
//  PageViewApp
//
//  Created by Melanie on 12/6/18.
//

import UIKit
import XLPagerTabStrip

class ViewController: UIViewController {

    @IBOutlet weak var menuBarView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var menuStackView: UIStackView!
    
    let colors: [UIColor] = [.red, .green, .blue]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @IBAction func firstIemMenuAction(_ sender: Any) {
        self.collectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: UICollectionView.ScrollPosition.left, animated: true)
    }
    
    @IBAction func thirdItemMenuAction(_ sender: Any) {
        self.collectionView.scrollToItem(at: IndexPath(row: 2, section: 0), at: UICollectionView.ScrollPosition.right, animated: true)
    }
    
    @IBAction func secondItemMenuAction(_ sender: Any) {
        self.collectionView.scrollToItem(at: IndexPath(row: 1, section: 0), at: UICollectionView.ScrollPosition.right, animated: true)
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        menuBarView.transform = CGAffineTransform(translationX: x/3, y: 0)
    }
}

extension ViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Descripción")
    }
    
}
