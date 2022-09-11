//
//  TextFieldSample.swift
//  SwiftUISamples
//
//  Created by Umut Mutlu on 10.09.2022.
//

import SwiftUI

struct TextFieldSample: View {
    @State var textFieldText : String = ""
    var body: some View {
        VStack {
            TextField("Write Something.", text: $textFieldText)
                
                //.textFieldStyle(RoundedBorderTextFieldStyle()
            
                .padding()
            .background(.gray.opacity(0.3)).cornerRadius(10).foregroundColor(.red).font(.title)
        }
        Button(action: {}, label: {Text("Save".uppercased()).padding().background(Color.blue.cornerRadius(10)).foregroundColor(.white)
            .font(.headline)})
        
    }
}

struct TextFieldSample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSample()
    }
}
