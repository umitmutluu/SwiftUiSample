//
//  ObsObjectSample.swift
//  SwiftUISamples
//
//  Created by Umut Mutlu on 11.09.2022.
//

import SwiftUI

struct FruitModel:Identifiable {
    let id :String = UUID().uuidString
    let name : String
    let count : Int
    
}
class FruitViewModel : ObservableObject {
    
    init(){
        getFruits()
    }
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    func deleteFruit(index : IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruits (){
        let fruitModel1 = FruitModel(name: "Orange", count: 12)
        let fruitModel2 = FruitModel(name: "Banana", count: 22)
        let fruitModel3 = FruitModel(name: "Cheer", count: 82)
        let fruitModel4 = FruitModel(name: "Peach", count: 13)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1  ){
            self.isLoading=true
            self.fruitArray.append(fruitModel1)
            self.fruitArray.append(fruitModel2)
            self.fruitArray.append(fruitModel3)
            self.fruitArray.append(fruitModel4)
            self.isLoading=false
        }
        
        
    }
}
struct ObsObjectSample: View {
    // @State var fruitArray : [FruitModel]=[]
    @ObservedObject var fruitViewModel : FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView{
            if fruitViewModel.isLoading{
                ProgressView().progressViewStyle(CircularProgressViewStyle()).foregroundColor(Color.primary)
            }else {
                List{
                    ForEach(fruitViewModel.fruitArray){
                        fruits in HStack{
                            Text("\(fruits.count)").font(.headline).bold().foregroundColor(.red).padding(.trailing).frame(width:50)
                            Text(fruits.name).font(.headline).bold()
                        }
                    }.onDelete(perform: fruitViewModel.deleteFruit)
                }.listStyle(GroupedListStyle()).navigationTitle("Fruit List").navigationBarItems(trailing: NavigationLink(destination: SecondScreen( fruitViewModel: fruitViewModel), label: {Image(systemName: "arrow.right").font(.title)}))
            }
            
        }

    }

}

struct SecondScreen: View{
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View{
        
        ZStack{
            Color.green.ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                fruitViewModel.fruitArray.removeLast()            },
                   label: {Text("Goto back").foregroundColor(.white).font(.largeTitle).fontWeight(.semibold)})
        }
    }
}

struct ObsObjectSample_Previews: PreviewProvider {
    static var previews: some View {
        ObsObjectSample()
//        SecondScreen()
    }
}
