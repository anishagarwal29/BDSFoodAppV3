//
//  HeaderView.swift
//  BDSFoodAppV3
//
//  Created by Anish Agarwal on 18/9/24.
//


//
//  HeaderView.swift
//  BDSFoodAppV2
//
//  Created by Anish Agarwal on 17/8/24.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(spacing: 4) {
            Text("BDSFoodApp")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text(subtitle)
                .font(.headline)
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.brown.opacity(0.8))
        .cornerRadius(10)
    }
}
