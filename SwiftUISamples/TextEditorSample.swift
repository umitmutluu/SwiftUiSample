//
//  TextEditorSample.swift
//  SwiftUISamples
//
//  Created by Umut Mutlu on 10.09.2022.
//

import SwiftUI

struct TextEditorSample: View {
    @State var textEditorText: String = ""
    var body: some View {
        NavigationView{
            VStack{
              
                TextEditor(text: $textEditorText).frame(height:250)
                Button(action: {}, label: {Text("Save".uppercased()).font(.headline).foregroundColor(.white).padding().frame(maxWidth: .infinity).background(.blue).cornerRadius(10)})
                
            }
        }.navigationTitle("asdasd").background(.red)
    }
}

struct TextEditorSample_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorSample()
    }
}
