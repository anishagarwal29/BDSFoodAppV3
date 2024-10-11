//
//  FoodItemCard.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 10/10/24.
//
import SwiftUI

struct FoodItemCard: View {
    let foodItem: FoodItem
    
    var body: some View {
        VStack {
            Image(foodItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            Text(foodItem.name)
                .lineLimit(2)
                .multilineTextAlignment(.center)

        }
        .padding(8)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
