//
//  CartView.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//

import SwiftUI

struct CartView: View {
    @ObservedObject var cartViewModel: CartViewModel
    
    var body: some View {
        VStack {
            HeaderView(title: "BDSFoodApp", subtitle: "Your Cart")
                .padding()
            
            List {
                ForEach(cartViewModel.cartItems) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("$\(item.price, specifier: "%.2f")")
                    }
                }
                .onDelete(perform: cartViewModel.deleteFromCart) // Enable swipe-to-delete
            }
            
            HStack {
                Text("Total: ")
                Spacer()
                Text("$\(cartViewModel.totalPrice, specifier: "%.2f")")
                    .font(.title)
            }
            .padding()
            
            Button(action: {
                // Checkout action goes here
            }) {
                Text("Checkout")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}
