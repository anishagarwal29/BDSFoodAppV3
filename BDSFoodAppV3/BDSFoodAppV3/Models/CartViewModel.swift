//
//  CartViewModel.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//

import SwiftUI
import Foundation // Ensure Foundation is imported

class CartViewModel: ObservableObject {
    @Published var cartItems: [FoodItem] = [] {
        didSet {
            saveCartItems() // Save items whenever cartItems is updated
        }
    }
    
    init() {
        loadCartItems() // Load items when the view model is initialized
    }
    
    var totalPrice: Double {
        cartItems.reduce(0) { $0 + $1.price }
    }
    
    func addToCart(_ item: FoodItem) {
        cartItems.append(item)
    }
    
    func deleteFromCart(at offsets: IndexSet) {
        cartItems.remove(atOffsets: offsets) // Remove items at specified offsets
    }
    
    private func saveCartItems() {
        if let encoded = try? JSONEncoder().encode(cartItems) {
            UserDefaults.standard.set(encoded, forKey: "cartItems")
        }
    }
    
    private func loadCartItems() {
        if let data = UserDefaults.standard.data(forKey: "cartItems"),
           let decoded = try? JSONDecoder().decode([FoodItem].self, from: data) {
            cartItems = decoded
        }
    }
}
