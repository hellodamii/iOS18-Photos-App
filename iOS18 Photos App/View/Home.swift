//
//  Home.swift
//  iOS18 Photos App
//
//  Created by Busha on 21/07/2024.
//

import SwiftUI

struct Home: View {
    var size: CGSize
    var safeArea: EdgeInsets
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                /// Photo Grid Scroll View
            PhotoScrollView(size: size, safeArea: safeArea)
            }
        }
    }
}

#Preview {
    ContentView()
}
