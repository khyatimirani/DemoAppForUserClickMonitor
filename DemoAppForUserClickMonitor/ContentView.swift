//
//  ContentView.swift
//  DemoAppForUserClickMonitor
//
//  Created by Khyati Mirani on 13/05/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ViewModel()
    var body: some View {
        Button("I love Burgers 🍔") {
            viewModel.saveClickAction(click: "Burgers")
            print("Burger clicked at")
        }
        
        Button("I love Pizza 🍕") {
            viewModel.saveClickAction(click: "Burgers")
            print("Pizza clicked")
        }
        
        Button("Get last 10 sec click data") {
           let count =  viewModel.getAggrgatedClickCount(second: 20)
            print("Burgers clicked \(count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
