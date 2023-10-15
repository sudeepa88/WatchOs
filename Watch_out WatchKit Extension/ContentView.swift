//
//  ContentView.swift
//  Watch_out WatchKit Extension
//
//  Created by sudeepa pal on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
            
                ScrollView{
            VStack(spacing:10){
            
            VStack{
                
                
            }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))      //no.1
                
                
                VStack{
                    
                    
                }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                        //no.1
                
                VStack{
                   
                    
                }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                        //no.3
                VStack{
                    
                    
                }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                        //no.4
                    VStack{
                       
                        
                    }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                            //no.4
             
                VStack{
                    
                    
                }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                        //no.4
                    VStack{
                       
                        
                    }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
            
            }.frame(maxHeight:.infinity,alignment:.topLeading)
            //vstack
                }.frame(height:.infinity)//for scrollview
        }
        }//main zstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
