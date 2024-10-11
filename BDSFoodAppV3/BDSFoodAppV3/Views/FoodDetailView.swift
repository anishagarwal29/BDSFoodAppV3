//
//  FoodDetailView.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//


//
//  FoodDetailView.swift
//  BDSFoodAppV2
//
//  Created by Anish Agarwal on 17/8/24.
//

import SwiftUI

struct FoodDetailView: View {
    let foodItem: FoodItem
    @ObservedObject var cartViewModel: CartViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("$\(foodItem.price, specifier: "%.2f")")
                .font(.title)
            
            Button(action: {
                cartViewModel.addToCart(foodItem)
            }) {
                Text("Add to Cart")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle(foodItem.name)
    }
}
