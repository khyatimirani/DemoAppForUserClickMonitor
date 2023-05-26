//
//  ContentViewViewModelTest.swift
//  DemoAppForUserClickMonitorTests
//
//  Created by Khyati Mirani on 14/05/23.
//

import XCTest
@testable import DemoAppForUserClickMonitor
class ContentViewViewModelTest: XCTestCase {
    
    var viewModel: ContentViewViewModel?

    func testSaveClickAction() {
        viewModel = ContentViewViewModel()
        let isAdded = viewModel?.saveClickAction(key: "Burgers", click: "2") ?? false
        XCTAssertTrue(isAdded)
    }
    
    func testGetAggrgatedClickCounttwentySeconds() {
        viewModel = ContentViewViewModel()
        viewModel?.saveClickAction(key: "Burgers", click: "2")
        viewModel?.saveClickAction(key: "Burgers", click: "3")
        viewModel?.saveClickAction(key: "Burgers", click: "1")
        let results:[Float] = [3.0, 3.0, 3.0]
        XCTAssertEqual(results, viewModel?.getAggregatedAnswer("Burgers"))
    }
    
}
