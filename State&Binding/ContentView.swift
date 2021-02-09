//
//  ContentView.swift
//  State&Binding
//
//  Created by Udin Rajkarnikar on 2/9/21.
//

import SwiftUI

struct ContentView: View {
  @State var placeholderText = "Hello world" //appcycle ma yesko state change huncha so state variable
    
    var body: some View {
        Text("\(placeholderText)")
        
        Dog(placeholderText1: $placeholderText)
        
        Button {
            self.placeholderText = "Meow"
        } label: {
            Text("Cat Says")
        }

            
    }
}

struct Dog : View {
    @Binding var placeholderText1: String
    var body: some View{
        Button {
            self.placeholderText1 = "Woof" //Since we are changing this value we must constantly check for its state
        } label: {
            Text("Dogs Says")
        }
    }
}


