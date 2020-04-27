//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by 西村拓海 on 2020/04/22.
//  Copyright © 2020 Taku. All rights reserved.
//

import XCTest
@testable import FoodTracker


class FoodTrackerTests: XCTestCase {
    // MARK: Meal Class Tests
    // Confirm that the Meal initializer return a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        //Zero rating
        let zeroRatingMeal = Meal(name:"Zero",photo: nil,rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
    
        let positiveRatingMeal = Meal(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //Empty String
        let emptyStringMeal = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
