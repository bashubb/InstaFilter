//
//  ContentView.swift
//  InstaFilter
//
//  Created by HubertMac on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var filterIntensity = 0.5
    
    
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.secondary)
                    
                    Text("Tap to select a picture")
                        .foregroundStyle(Color.white)
                        .font(.headline)
                    
                    image?
                        .resizable()
                        .scaledToFit()
                }
                .onTapGesture {
                    // select a image
                }
                
                HStack{
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                .padding(.vertical)
                
                HStack {
                    Button("Change Filter") {
                        // change filter
                    }
                    
                    Spacer()
                    
                    Button("Save", action: save)
                }
                
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("InstaFilter")
        }
    }
    
    func save() {
        
    }
    

}

#Preview {
    ContentView()
}
