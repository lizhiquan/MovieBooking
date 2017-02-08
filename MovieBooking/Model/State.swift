//
//  State.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

protocol State {
    var isSelectable: Bool { get }
}

class AvailableState: State {
    var isSelectable: Bool {
        return true
    }
}

class EmptyState: State {
    var isSelectable: Bool {
        return false
    }
}

class ReservedState: State {
    var isSelectable: Bool {
        return false
    }
}

class SelectedState: State {
    var isSelectable: Bool {
        return true
    }
}

class UnknownState: State {
    var isSelectable: Bool {
        return false
    }
}
