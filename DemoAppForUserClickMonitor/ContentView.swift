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
        VStack(alignment: .center, spacing: 20){
            Button("I love Burgers 🍔") {
                viewModel.saveClickAction(click: "Burgers")
                print("Burger clicked at \(Date())")
            }
            
            Button("10 Sec") {
                let count =  viewModel.getAggrgatedClickCount(second: 10)
                print("User clicked burger for \(count) times in last 10 sec")
            }
            
            Button("20 Sec") {
                let count =  Int(viewModel.getAggrgatedClickCount(second: 20))
                print("User clicked burger for \(count) times in last 20 sec")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
