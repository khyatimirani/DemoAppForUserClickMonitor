//
//  ContentView.swift
//  DemoAppForUserClickMonitor
//
//  Created by Khyati Mirani on 13/05/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ContentViewViewModel()
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Button("I love Burgers 🍔") {
                viewModel.saveClickAction(click: "key1")
                print("Burger clicked at \(Date())")
            }
            
            Button("Get aggregated clicks made by user") {
                let count =  viewModel.getAggregatedAnswer("key1")
                print("User clicked burger for \(count) times in last 10 sec, 20 sec and 150 sec")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
