//
//  AddTask.swift
//  Watch_out WatchKit Extension
//
//  Created by sudeepa pal on 16/10/23.
//

import SwiftUI

struct AddTask: View {
    @Binding var searchedText: String 
    
    var body: some View {
        VStack{
            HStack{
                Text("Add Your Task:")
                    .font(.system(size:12))
                    .foregroundColor(Color(red: 226/255, green:135/255, blue:67/255))
            }
            
            VStack{
                TextField("Enter your Task:",text:$searchedText)
                    .textContentType(.oneTimeCode)
                        
                    
            }.frame(width: 180, height:30, alignment:.leading)
                .padding(.top,20)
            
            Spacer()
            
        }.frame(maxWidth:.infinity, maxHeight:.infinity)
    }
}

struct AddTask_Previews: PreviewProvider {
    @State static var searchedText: String = ""
    static var previews: some View {
        AddTask(searchedText:$searchedText)
    }
}

