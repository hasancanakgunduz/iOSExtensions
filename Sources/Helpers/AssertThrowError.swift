//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 15.11.2021.
//

import XCTest

public func assert<T, E: Error>(
    at file: StaticString = #file,
    line: UInt = #line,
    _ expression: @autoclosure () throws -> T,
    throwsError errorExpression: @autoclosure () -> E
) where E: Equatable {
    do {
        // Evaluate the expression, and throw away any result
        _ = try expression()

        // If execution continues, it means that the expression
        // didn't throw, which in this case is a failure
        XCTFail("Expected expression to throw", file: file, line: line)
    } catch let thrownError as E {
        let expectedError = errorExpression()

        XCTAssert(thrownError == expectedError,
                  "Incorrect error thrown. \(thrownError) is not equal to \(expectedError)",
                  file: file,
                  line: line)
    } catch {
        XCTFail("Invalid error thrown: \(error)", file: file, line: line)
    }
}
