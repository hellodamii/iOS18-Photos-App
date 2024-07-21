//
//  ContentView.swift
//  iOS18 Photos App
//
//  Created by Busha on 21/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            Home(size: size, safeArea: safeArea)
                .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    ContentView()
}
