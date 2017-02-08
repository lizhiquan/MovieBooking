//
//  SeatViewModel.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/6/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

class SeatViewModel {
    
    private let dialogPresenter: DialogPresenter
    
    let seatAdapter: SeatAdapter
    
    init(dialogPresenter: DialogPresenter) {
        self.dialogPresenter = dialogPresenter
        self.seatAdapter = SeatAdapter(seats: AppUtils.fakeSeats()) { () in
            dialogPresenter.present(title: "Error", message: "Max number of seats exceeded", buttonTitle: "Close")
        }
    }
}
