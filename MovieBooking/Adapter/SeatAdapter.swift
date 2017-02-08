//
//  SeatAdapter.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/7/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

import UIKit

class SeatAdapter: SelectableAdapter {
    
    fileprivate let seats: [Seat]
    
    init(seats: [Seat], reachMaxCallback: ((Void) -> Void)?) {
        self.seats = seats
        super.init(maxSelection: AppUtils.maxSelection, reachMaxCallback: reachMaxCallback)
    }
    
    func seatTypeAt(position: Int) -> Seat.`Type` {
        switch seats[position].state {
        case is AvailableState:
            return .available
        case is ReservedState:
            return .reserved
        case is EmptyState:
            return .empty
        case is SelectedState:
            return .selected
        default:
            return .unknown
        }
    }
    
    func changeStateAt(position: Int) {
        if seats[position].isStateSelectable {
            if toggleAt(position: position) {
                seats[position].changeState()
            }
        }
    }
}

extension SeatAdapter: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return seats.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! SeatCell
        cell.configureCell(type: seatTypeAt(position: indexPath.item))
        return cell
    }
}

extension SeatAdapter: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        changeStateAt(position: indexPath.item)
        collectionView.reloadItems(at: [indexPath])
    }
}
