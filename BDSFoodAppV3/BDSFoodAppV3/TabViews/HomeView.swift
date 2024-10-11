//
//  HomeView.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//


import SwiftUI

struct HomeView: View {
    @ObservedObject var cartViewModel: CartViewModel
    @State private var selectedStall: String? = "Burger Stall"
    
    let stalls = [
        Stall(name: "Western Stall", foodItems: [
            FoodItem(name: "Western Stall Item 1", imageName: "burger", price: 50.99),
            FoodItem(name: "Western Stall Item 2", imageName: "pizza", price: 50.99),
            FoodItem(name: "Western Stall Item 3", imageName: "pasta", price: 50.99),
            FoodItem(name: "Western Stall Item 4", imageName: "fries", price: 50.99),
            FoodItem(name: "Western Stall Item 5", imageName: "salad", price: 50.99),
            FoodItem(name: "Western Stall Item 6", imageName: "soda", price: 50.99)
        ]),
        Stall(name: "Food Stall", foodItems: [
            FoodItem(name: "Food Stall Item 1", imageName: "sushi", price: 50.99),
            FoodItem(name: "Food Stall Item 2", imageName: "ramen", price: 50.99),
            FoodItem(name: "Food Stall Item 3", imageName: "tempura", price: 50.99),
            FoodItem(name: "Food Stall Item 4", imageName: "rice_bowl", price: 50.99),
            FoodItem(name: "Food Stall Item 5", imageName: "miso_soup", price: 50.99),
            FoodItem(name: "Food Stall Item 6", imageName: "tea", price: 50.99)
        ]),
        // Define food items for other stalls
    ]
    
    var body: some View {
        VStack {
            HeaderView(title: "BDSFoodApp", subtitle: "Home")
            
            NavigationSplitView {
                List(stalls, id: \.name) { stall in
                    NavigationLink(destination: StallView(stall: stall, cartViewModel: cartViewModel)) {
                        Text(stall.name)
                            .font(.title)
                            .padding()
                    }
                }
                .navigationTitle("Stalls")
            } detail: {
                if let selectedStall = selectedStall {
                    if let stall = stalls.first(where: { $0.name == selectedStall }) {
                        StallView(stall: stall, cartViewModel: cartViewModel)
                    }
                } else {
                    Text("Select a stall")
                        .font(.largeTitle)
                }
            }
        }
        .padding()
    }
}
