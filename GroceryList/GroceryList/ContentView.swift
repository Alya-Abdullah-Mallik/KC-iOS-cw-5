//
//  ContentView.swift
//  GroceryList
//
//  Created by Alya Mallik on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var groceryItems = ["Takis", "Ramen", "Chocolate", "Coffee", "Coffee Beans"]
    
    @State var newItems = ""
    var body: some View {
        
        VStack{
                Text("My Grocery List")
                    .font(.largeTitle)
                    Spacer()
            
            List (groceryItems,id:\.self){ i in
                HStack{
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text(i)
                        .font(.title2)
                }
            
            }
            HStack{
                Button {
                    groceryItems.append(newItems)
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 50, height: 50)
                        .background(.mint)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
                
                TextField("New Items", text: $newItems)
                
                Button {
                    groceryItems.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .frame(width: 50, height: 50)
                        .background(.mint)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
