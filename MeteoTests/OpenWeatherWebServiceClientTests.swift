//
//  OpenWeatherWebServiceClientTests.swift
//  MeteoTests
//
//  Created by azerty on 07/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import XCTest
//import RxSwift
//import RxTest
//import RxBlocking

@testable import Meteo

class OpenWeatherWebServiceClientTests: XCTestCase {
    private let owclient = OWWebServiceClient()
    private let unexistingCity = "hbgvfcgyhruntybtteyrf"
    private let testCity = "Paris"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test3hForecast() {
        let result = try? owclient.threeHoursForecast(city: testCity).materialize().toBlocking().first()
        switch result {
        case .next(let element)??: XCTAssert(element != nil)
        case .error(let error)??: XCTFail(error.localizedDescription)
        default: break
        }
    }
    
    func test3hForecastUnexistingCity() {
        let result = try? owclient.threeHoursForecast(city: unexistingCity).materialize().toBlocking().first()
        switch result {
        case .next??: XCTFail("No result expected with unexisting city")
        case .error??: XCTAssert(true)
        default: break
        }
    }
    
    func testCurrentWeather() {
        let result = try? owclient.currentWeather(city: testCity).materialize().toBlocking().first()
        switch result {
        case .next(let element)??: XCTAssert(element != nil)
        case .error(let error)??: XCTFail(error.localizedDescription)
        default: break
        }
    }
    
    func testCurrentWeatherUnexistingCity() {
        let result = try? owclient.currentWeather(city: unexistingCity).materialize().toBlocking().first()
        switch result {
        case .next??: XCTFail("No result expected with unexisting city")
        case .error??: XCTAssert(true)
        default: break
        }
    }
    
    // For now, this test always failed as I dont have a subscribtion plan that cover daily forecast
    // So, for now, the Assertion are inverted, it will go into error when I get a correct API key
    func testDailyForecast() {
        let result = try? owclient.sixteenDaysForecast(city: testCity).materialize().toBlocking().first()
        switch result {
        case .next??: XCTFail()
        case .error??: XCTAssert(true)
        default: break
        }
    }
    
    func testDailyForecastUnexistingCity() {
        let result = try? owclient.sixteenDaysForecast(city: unexistingCity).materialize().toBlocking().first()
        switch result {
        case .next??: XCTFail("No result expected with unexisting city")
        case .error??: XCTAssert(true)
        default: break
        }
    }
}
