//
//  ContentView.swift
//  Watch_out WatchKit Extension
//
//  Created by sudeepa pal on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isTextFieldVisible = false
    @State private var name: String = ""
    var body: some View {
        
        VStack{
            
            HStack{
                Button(action: {
                    isTextFieldVisible.toggle()
                }){
                    Image(systemName: "plus")
                    
                }
            }.frame(width:100, height:20, alignment:.center)
           Spacer()
            VStack{
                
                ScrollView{
                    
                    
                   
                       
                    
                    
                    
            VStack(spacing:10){
                
                ZStack{
            VStack{
                
                
            }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                //no.1
                    if isTextFieldVisible{
                    VStack{
                        TextField("Enter Your task here ! ",text:$name)
                    }
                    }
                }//First card(ZSTACk)
                ZStack{
                VStack{
                    
                    
                }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                        //no.1
                    
                    VStack{
                         
                        
                        
                        Text("\(name)")
                    }.frame(width: 100, height: 48)
                    
                }//Second card (ZStack)
                
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
                            .navigationBarHidden(true)
                        
            //vstack
                    
                }.frame(height:.infinity)
                        
                        
                   //for scrollview
                    
               
            }
           
        }//main zstack
       
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
