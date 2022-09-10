//
//  ActSheet.swift
//  Kontrol
//
//  Created by Umut Mutlu on 10.09.2022.
//

import SwiftUI

struct ActSheet: View {
    @State var showActionSheet : Bool = false
    @State var actionSheetOptions:ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 30, height: 30)
                Text("@Username")
                Spacer()
                Button {
                    actionSheetOptions = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }.accentColor(.primary)

                
            }.padding(.horizontal )
            Rectangle().aspectRatio(1.0, contentMode: .fit)
        }.actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
    })
    }
    
    func getActionSheet() -> ActionSheet {
      
        let actionSheetButton : ActionSheet.Button = .default(Text("Share")) {  }
        let reportButton : ActionSheet.Button = .destructive(Text("Report")) { }
        let deleteButton : ActionSheet.Button = .destructive(Text("Delete")) {    }
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [actionSheetButton,reportButton,deleteButton,cancelButton])
        case .isOtherPost:
            return ActionSheet(title:title, message: nil, buttons: [actionSheetButton,reportButton,cancelButton,])
        }
        
        
    }
}

struct ActSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActSheet()
    }
}
