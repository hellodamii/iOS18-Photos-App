//
//  PhotoScrollView.swift
//  iOS18 Photos App
//
//  Created by Damilare on 21/07/2024.
//

import SwiftUI

struct PhotoScrollView: View {
    var size: CGSize
    var safeArea: EdgeInsets
    var body: some View {
        let screenHeight = size.height + safeArea.top + safeArea.bottom
        let minimisedHeight = screenHeight * 0.4
        
        ScrollView(.horizontal) {
            LazyHStack(spacing: 0) {
                /// Grid Photos View
                GridPhotosScrollView()
                
                    .frame(width: size.width)
                
                StrechableView(.blue)
                
                StrechableView(.yellow)
                
                StrechableView(.purple)
                
                
            }
        }
        .scrollIndicators(.hidden)
        .scrollTargetBehavior(.paging)
        .frame(height: screenHeight)
        .frame(height: screenHeight - minimisedHeight, alignment: .bottom)
    }
    
    @ViewBuilder
    func GridPhotosScrollView() -> some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 4), count: 3), spacing: 4) {
                ForEach(1...300, id: \.self) {_ in
                    Rectangle()
                        .fill(.red)
                        .frame(height: 120)
                }
            }
        }
    }
    
    /// Strechable Paging  views
    @ViewBuilder
    func StrechableView(_ color: Color) -> some View {
        GeometryReader {_ in
            Rectangle()
                .fill(color)
        }
        .frame(width: size.width)
    }
}

#Preview {
    ContentView()
}
