//
//  StallView.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//

import SwiftUI

struct StallView: View {
    let stall: Stall
    @ObservedObject var cartViewModel: CartViewModel
    
    private let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(stall.foodItems) { foodItem in
                    NavigationLink(destination: FoodDetailView(foodItem: foodItem, cartViewModel: cartViewModel)) {
                        FoodItemCard(foodItem: foodItem)
                    }
                }
            }
            .padding()
        }
        .navigationTitle(stall.name)
    } 
}
