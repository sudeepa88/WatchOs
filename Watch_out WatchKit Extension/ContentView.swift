////
////  ContentView.swift
////  Watch_out WatchKit Extension
////
////  Created by sudeepa pal on 15/10/23.
////
//
//import SwiftUI
//
//struct ContentView: View {
//   // @Binding var okay:String
//    @State var  searchedText: String = ""
//    @State var searchHistory: [String] = []
//
//    var body: some View {
//        VStack{
//            NavigationLink{
//                AddTask(searchedText: $searchedText)
//            }label: {
//              
//                    
//                    Image(systemName: "plus")
//                        .font(.system(size:22))
//                    
//                    
//                
//            }
//            
//            
//             Spacer()
//            VStack{
//                
//                ScrollView{
//            VStack(spacing:10){
//                
//                ZStack{
//            VStack{
//                
//                
//            }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                //no.1
//                    
//                    VStack{
//                        Text(self.searchedText)
//                        //Text(self.okay)
//                    }
//                    
//                }//First card(ZSTACk)
//                
//                
//                ZStack{
//                VStack{
//                    
//                    
//                }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                        //no.1
//                    
//                    VStack{
//                        Text(self.searchedText)
//                        //Text(self.okay)
//                    }
//                    
//                    
//                }//Second card (ZStack)
//                
//                VStack{
//                   
//                    
//                }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                        //no.3
//                VStack{
//                    
//                    
//                }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                        //no.4
//                    VStack{
//                       
//                        
//                    }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                            //no.4
//             
//                VStack{
//                    
//                    
//                }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                        //no.4
//                    VStack{
//                       
//                        
//                    }.frame(width:200, height:50)
//                    .overlay(RoundedRectangle(cornerRadius:20)
//                                    .fill(Color.gray))
//                
//               
//            
//            
//            }.frame(maxHeight:.infinity,alignment:.topLeading)
//                            
//                        
//            //vstack
//                    
//                }.frame(maxHeight:.infinity)
//                        
//                        
//                   //for scrollview
//                    
//               
//            }
//           
//        }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.topLeading)
//            .navigationBarHidden(true)//main vstack
//       
//    }
//        
//}
//
//struct ContentView_Previews: PreviewProvider {
//    //@State static var okay: String = ""
//    static var previews: some View {
//        NavigationView{
//            Group {
//                
//                
//                    ContentView()
//            
//                
//            }
//        }
//        
//    }
//}



import SwiftUI

struct ContentView: View {
    @State private var searchedText: String = ""
    @State private var history: [String] = []
    
    var body: some View {
        VStack {
            NavigationLink(destination: AddTask(searchedText: $searchedText)) {
                Image(systemName: "plus")
                    .font(.system(size: 22))
            }
            
            Spacer()
            
            VStack {
                ScrollView {
                    NavigationLink(destination: ShowTask()){
                    VStack(spacing: 10) {
                       
                        ForEach(history, id: \.self) { item in
                            
                                ZStack {
                                    
                                    VStack {
                                        // Empty view for background
                                    }
                                    .frame(width: 200, height: 50)
                                    .overlay(RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.gray))
                                    
                                    VStack {
                                        Text(item)
                                    }.frame(width: 200, height: 50)
                                    
                                }// ZStack inner
                            
                            }// end of the for each loop
                        
                        }// Main VStack
                        .frame(maxHeight: .infinity, alignment: .topLeading)
                        
                    }.frame(width: 200, height: 50)
                    .cornerRadius(20)
                    .navigationBarHidden(false)
                    // Navigation link
                    }
                    .frame(maxHeight: .infinity)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarHidden(true)
            .onChange(of: searchedText) { newValue in
                if !newValue.isEmpty {
                    //history.append(newValue)
                    
                    // new value is getting added in the beginning of the array
                    history.insert(newValue, at: 0)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentView()
            }
        }
    }
    

