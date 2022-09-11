//
//  PickerSample.swift
//  SwiftUISamples
//
//  Created by Umut Mutlu on 10.09.2022.
//

import SwiftUI

struct PickerSample: View {
    @State var selector :String = ""
    let caseListSample:[String] = ["Most Recently","Most Viewed","Most Popular"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes : [NSAttributedString.Key: Any] = [.foregroundColor:UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
        var body: some View {
        Picker(selection: $selector,label: Text("Picker"), content:{
            ForEach(caseListSample.indices){index in Text(caseListSample[index]).tag(caseListSample[index])}
        } ).pickerStyle(SegmentedPickerStyle())
        
        
        
//        VStack{
//            HStack{
//                Text("Age")
//                Text(stringCase)
//            }
//            Picker(selection: $stringCase, label: Text("Pickerr"), content:{
//                ForEach(1..<101){
//                    number in Text("\(number)").tag("\(number)")
//                }
//            } ).pickerStyle(WheelPickerStyle()).background(.white)
//
//        }
    }
}

struct PickerSample_Previews: PreviewProvider {
    static var previews: some View {
        PickerSample()
    }
}
