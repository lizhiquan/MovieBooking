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
        
        collectionView.dataSource = viewModel.seatAdapter
        collectionView.delegate = viewModel.seatAdapter
    }
}
