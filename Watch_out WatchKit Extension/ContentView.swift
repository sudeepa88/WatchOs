//
//  ContentView.swift
//  Watch_out WatchKit Extension
//
//  Created by sudeepa pal on 15/10/23.
//

import SwiftUI

struct ContentView: View {
   // @Binding var okay:String
    @State var  searchedText: String = ""

    var body: some View {
        VStack{
            NavigationLink{
                AddTask(searchedText: $searchedText)
            }label: {
              
                    
                    Image(systemName: "plus")
                        .font(.system(size:22))
                    
                    
                
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
                    
                    VStack{
                        Text(self.searchedText)
                        //Text(self.okay)
                    }
                    
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
                    
                }.frame(maxHeight:.infinity)
                        
                        
                   //for scrollview
                    
               
            }
           
        }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.topLeading)
            .navigationBarHidden(true)//main vstack
       
    }
        
}

struct ContentView_Previews: PreviewProvider {
    //@State static var okay: String = ""
    static var previews: some View {
        NavigationView{
            Group {
                
                
                    ContentView()
            
                
            }
        }
        
    }
}
