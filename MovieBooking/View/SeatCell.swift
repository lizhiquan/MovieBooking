//
//  SeatCell.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

import UIKit

class SeatCell: UICollectionViewCell {
    
    func configureCell(type: Seat.`Type`) {
        switch type {
        case .available:
            backgroundColor = UIColor.darkGray
        case .reserved:
            backgroundColor = UIColor.black
        case .selected:
            backgroundColor = UIColor.green
        default:
            backgroundColor = UIColor.clear
        }
    }
}
