//
//  AppUtils.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

class AppUtils {
    
    static let maxSelection = 2
    
    static let maxNumberOfItemsPerRow = 4
    
    static func fakeSeats() -> [Seat] {
        return [
            Seat(col: 0, row: 0, type: .available),
            Seat(col: 0, row: 1, type: .available),
            Seat(col: 0, row: 2, type: .empty),
            Seat(col: 0, row: 3, type: .available),
            
            Seat(col: 1, row: 0, type: .reserved),
            Seat(col: 1, row: 1, type: .available),
            Seat(col: 1, row: 2, type: .empty),
            Seat(col: 1, row: 3, type: .available),
            
            Seat(col: 2, row: 0, type: .reserved),
            Seat(col: 2, row: 1, type: .reserved),
            Seat(col: 2, row: 2, type: .empty),
            Seat(col: 2, row: 3, type: .available),
            
            Seat(col: 3, row: 0, type: .available),
            Seat(col: 3, row: 1, type: .available),
            Seat(col: 3, row: 2, type: .empty),
            Seat(col: 3, row: 3, type: .reserved)
        ]
    }
}
