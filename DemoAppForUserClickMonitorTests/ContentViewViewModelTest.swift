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
        let isAdded = viewModel?.saveClickAction(click: "Burgers") ?? false
        XCTAssertTrue(isAdded)
    }
    
    func testGetAggrgatedClickCounttwentySeconds() {
        viewModel = ContentViewViewModel()
        viewModel?.saveClickAction(click: "Burgers")
        viewModel?.saveClickAction(click: "Burgers")
        viewModel?.saveClickAction(click: "Burgers")
        let results = viewModel?.getAggrgatedClickCount(second: 10) ?? 0
        XCTAssertEqual(3.0, results)
    }
    
    func testGetAggrgatedClickCountForTenSeconds() {
        viewModel = ContentViewViewModel()
        viewModel?.saveClickAction(click: "Burgers")
        viewModel?.saveClickAction(click: "Burgers")
        viewModel?.saveClickAction(click: "Burgers")
        viewModel?.saveClickAction(click: "Burgers")
        let results = viewModel?.getAggrgatedClickCount(second: 20) ?? 0
        XCTAssertEqual(4, results)
    }
}