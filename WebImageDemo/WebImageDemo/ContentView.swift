//
//  ContentView.swift
//  WebImageDemo
//
//  Created by devonly on 2024/04/30.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    let imageURLs: [URL] = [
        "https://www.gstatic.com/webp/gallery/1.jpg",
        "https://www.gstatic.com/webp/gallery/1.webp",
        "https://upload.wikimedia.org/wikipedia/commons/2/2f/Google_2015_logo.svg",
        "https://apng.onevcat.com/assets/elephant.gif",
        "https://apng.onevcat.com/assets/elephant.png"
    ].map({ .init(string: $0)! })
    
    var body: some View {
        ScrollView(content: {
            LazyVGrid(columns: .init(repeating: .init(.flexible()), count: 3), content: {
                ForEach(imageURLs.indices, id: \.self, content: { index in
                    let imageURL: URL = imageURLs[index]
                    WebImage(url: imageURL)
                        .resizable()
                        .scaledToFit()
                })
            })
        })
    }
}


#Preview {
    ContentView()
}
