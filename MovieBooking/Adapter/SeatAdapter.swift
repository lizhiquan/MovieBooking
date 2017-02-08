//
//  SeatAdapter.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/7/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

class SeatAdapter: SelectableAdapter {
    
    private let seats: [Seat]
    
    init(seats: [Seat], reachMaxCallback: ((Void) -> Void)?) {
        self.seats = seats
        super.init(maxSelection: AppUtils.maxSelection, reachMaxCallback: reachMaxCallback)
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
        if seats[position].isStateSelectable {
            if toggleAt(position: position) {
                seats[position].changeState()
            }
        }
    }
}
