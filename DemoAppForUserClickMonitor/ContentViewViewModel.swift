//
//  ViewModel.swift
//  DemoAppForUserClickMonitor
//
//  Created by Khyati Mirani on 14/05/23.
//

import Foundation
import UserClickMonitor

class ContentViewViewModel {
    func saveClickAction(key: String, click: String) -> Bool {
        let clickMonitorHelper = ClickMonitor()
        return clickMonitorHelper.addEventToSystem(map: [key: click])
    }
    
    
    func getAggregatedAnswer(_ forKey: String) -> [Float] {
        let clickMonitorHelper = ClickMonitorCPPWrapper()
        let clickCount = clickMonitorHelper.getAggregatedAnswer(forKey)
        guard let resultArray = clickCount as? [Float] else { return [0,0,0] }
        return resultArray
    }
}
