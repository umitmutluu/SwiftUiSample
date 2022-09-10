//
//  ContextMenuSample.swift
//  SwiftUISamples
//
//  Created by Umut Mutlu on 10.09.2022.
//

import SwiftUI

struct ContextMenuSample: View {
    @State var backgroundColor : Color = Color(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            Image(systemName: "house.fill").font(.title)
            Text("Hoşgeldiniz").font(.headline)
            Text("ContextMenu deneme").font(.subheadline)
        }.foregroundColor(.white).padding(30).background(backgroundColor).cornerRadius(30).contextMenu {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                Label("Report Post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .orange
            }, label: {
                Label("Delete Post", systemImage: "heart.fill")
            })
        }
        
        
    }
}

struct ContextMenuSample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuSample()
    }
}
