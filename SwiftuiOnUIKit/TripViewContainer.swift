//
//  TripViewContainer.swift
//  SwiftuiOnUIKit
//
//  Created by Marco Alonso on 16/04/24.
//

import Foundation

import SwiftUI

/// Esta es una vista auxiliar que manda a llamar a la vista de SwiftUI DashboardTickets (Intermediario)
struct TripViewContainer: View {
    
    var dismissAction: (() -> Void)
    
    @ObservedObject var trip: Trip
    
    var body: some View {
        DashboardTickets(dismissAction: {
            dismissAction()
        }, items: $trip.items)
    }
}
