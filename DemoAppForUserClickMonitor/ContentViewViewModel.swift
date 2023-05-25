//
//  ViewModel.swift
//  DemoAppForUserClickMonitor
//
//  Created by Khyati Mirani on 14/05/23.
//

import Foundation
import UserClickMonitor

class ContentViewViewModel {
    func saveClickAction(click:String, key: String) -> Bool {
        let clickMonitorHelper = ClickMonitor()
        return clickMonitorHelper.addEventToSystem(map: [key: click])
    }
    
    
    func getAggregatedAnswer(_ forKey: String) -> [Float] {
        let clickMonitorHelper = ClickMonitorCPPWrapper()
        let clickCount = clickMonitorHelper.getAggregatedAnswer(forKey)
        return clickCount as! [Float]
    }
}
