//
//  FoodItem.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//


//
//  FoodItem.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//

import SwiftUI

struct FoodItem: Identifiable, Codable { // Conform to Codable
    let id = UUID()
    let name: String
    let imageName: String
    let price: Double
}

struct Stall {
    let name: String
    let foodItems: [FoodItem]
}
