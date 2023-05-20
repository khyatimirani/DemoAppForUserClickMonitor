//
//  ViewModel.swift
//  DemoAppForUserClickMonitor
//
//  Created by Khyati Mirani on 14/05/23.
//

import Foundation
import UserClickMonitor

class ContentViewViewModel {
    func saveClickAction(click:String) -> Bool {
        let timeStamp = getCurrentTime()
        let clickMonitorHelper = ClickMonitorCPPWrapper()
        return clickMonitorHelper.addEvent(toSystem: click, timeStamp)
    }
    
    private func getCurrentTime() -> String {
        let mytime = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return  format.string(from: mytime)
    }
    
    func getAggregatedAnswer(_ forKey: String) -> [Float] {
        let clickMonitorHelper = ClickMonitorCPPWrapper()
        let clickCount = clickMonitorHelper.getAggregatedAnswer(forKey)
        return clickCount as! [Float]
    }
}
