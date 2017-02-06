//
//  SeatViewModel.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

class SeatViewModel {
    
    private let seats: [Seat]
    
    init(seats: [Seat]) {
        self.seats = seats
    }
    
    var numberOfSeats: Int {
        return seats.count
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
        seats[position].changeState()
    }
}
