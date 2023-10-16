//
//  ContentView.swift
//  Watch_out WatchKit Extension
//
//  Created by sudeepa pal on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            NavigationLink{
                AddTask()
            }label: {
                HStack{
                    
                    Image(systemName: "plus")
                        .font(.system(size:22))
                    
                    
                }.frame(width:100, height:22, alignment:.center)
            }
            
            
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
                    

                    
                }//First card(ZSTACk)
                
                
                ZStack{
                VStack{
                    
                    
                }.frame(width:200, height:50)
                    .overlay(RoundedRectangle(cornerRadius:20)
                                    .fill(Color.gray))
                        //no.1
                    
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
                            
                        
            //vstack
                    
                }.frame(height:.infinity)
                        
                        
                   //for scrollview
                    
               
            }
           
        }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.topLeading)
            .navigationBarHidden(true)//main vstack
       
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Group {
                
                
                    ContentView()
            
                
            }
        }
        
    }
}
