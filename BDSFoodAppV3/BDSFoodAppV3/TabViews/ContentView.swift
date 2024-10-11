//
//  ContentView.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var cartViewModel = CartViewModel()
    @State private var selectedStall: Int? = 1
    
    var body: some View {
        TabView {
            HomeView(cartViewModel: cartViewModel)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CartView(cartViewModel: cartViewModel)
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}
