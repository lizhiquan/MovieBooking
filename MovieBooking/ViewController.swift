//
//  ViewController.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var viewModel: SeatViewModel!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let maxNumberOfItemsPerRow = AppUtils.maxNumberOfItemsPerRow
        let width = (collectionView.frame.width - flowLayout.sectionInset.left - flowLayout.sectionInset.right - flowLayout.minimumInteritemSpacing * CGFloat(maxNumberOfItemsPerRow - 1)) / CGFloat(maxNumberOfItemsPerRow)
        flowLayout.itemSize = CGSize(width: width, height: width)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewModel = SeatViewModel(dialogPresenter: DialogPresenter(vc: self))
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfSeats
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! SeatCell
        cell.configureCell(type: viewModel.seatTypeAt(position: indexPath.item))
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.didSelectSeatAt(position: indexPath.item)
        collectionView.reloadData()
    }
}
