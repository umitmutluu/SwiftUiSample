//
//  onDisAppearSample.swift
//  SwiftUISamples
//
//  Created by Umut Mutlu on 11.09.2022.
//

import SwiftUI

struct onDisAppearSample: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
            }
        .navigationTitle("deneme").toolbar {
                    Button("keslan") {
                        print("çok konuşma")
                    }
        }
        }
//        NavigationView {
//                   Text("SwiftUI")
//                       .navigationTitle("Screen Tidetle")
//                       .toolbar {
//                           Button("Right") {
//                               print("Right button tapped!")
//                           }
//                       }
//               }
    }
}

struct onDisAppearSample_Previews: PreviewProvider {
    static var previews: some View {
        onDisAppearSample()
    }
}
