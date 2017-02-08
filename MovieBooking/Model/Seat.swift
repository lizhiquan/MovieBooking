//
//  Seat.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

class Seat {
    
    private let col: Int
    private let row: Int
    
    private(set) var state: State
    
    var isStateSelectable: Bool {
        return state.isSelectable
    }
    
    enum `Type`: Int {
        case available = 2
        case empty = 0
        case reserved = 1
        case selected = 3
        case unknown = -1
    }
    
    init(col: Int, row: Int, type: Type) {
        self.col = col
        self.row = row
        switch type {
        case .empty:
            state = EmptyState()
        case .reserved:
            state = ReservedState()
        case .available:
            state = AvailableState()
        case .selected:
            state = SelectedState()
        case .unknown:
            state = UnknownState()
        }
    }
    
    func changeState() {
        if state is AvailableState {
            state = SelectedState()
        } else if state is SelectedState {
            state = AvailableState()
        }
    }
}
