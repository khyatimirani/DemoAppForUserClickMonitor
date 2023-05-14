//
//  ViewModel.swift
//  DemoAppForUserClickMonitor
//
//  Created by Khyati Mirani on 14/05/23.
//

import Foundation
import UserClickMonitor

class ViewModel {
    func saveClickAction(click:String) {
        let timeStamp = getCurrentTime()
        let clickMonitorHelper = ClickMonitorHelper()
        clickMonitorHelper.addEvent(toSystem: click, timeStamp)
    }
    
    private func getCurrentTime() -> String {
        let mytime = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return  format.string(from: mytime)
    }
    
    func getAggrgatedClickCount(second: Int) -> Float {
        let clickMonitorHelper = ClickMonitorHelper()
        let clickCount = clickMonitorHelper.getAggregatedAnswer(Int32(second))
        return clickCount
    }
}
