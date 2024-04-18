//
//  Trip.swift
//  SwiftuiOnUIKit
//
//  Created by Marco Alonso on 16/04/24.
//

import Foundation
import SwiftUI

class Trip: ObservableObject {
    @Published var items: [Item] = [
    Item(imageName: "bus", description: "Primera Select"),
    Item(imageName: "mappin.circle.fill", description: "Ruta local"),
    Item(imageName: "clock", description: "05:23 horas de trayecto"),
    Item(imageName: "carseat.right", description: "28 asientos disponibles"),
    ]
}

struct Item: Hashable {
    let imageName: String
    let description: String
}
