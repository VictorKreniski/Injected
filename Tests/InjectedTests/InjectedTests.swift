import XCTest
@testable import Injected

private struct TestInjectedValues: InjectionKey {
    static var currentValue: String = ""
}

private extension InjectedValues {
    var testValue: String {
        get { Self[TestInjectedValues.self] }
        set { Self[TestInjectedValues.self] = newValue }
    }
}

final class InjectedTests: XCTestCase {
    
    func testInejctedPropertyWrapperInit() {
        @Injected(\.testValue) var testValue
        
        XCTAssertEqual(testValue, "")
    }

    func testInjectedPropertyWrapperGetter() {
        @Injected(\.testValue) var testValue
        
        testValue = "Updated String"
        
        XCTAssertEqual(testValue, "Updated String")
    }
    
    func testInjectedPropertyWrapperSetter() {
        InjectedValues[\.testValue] = "I Love Tarantino Movies"
        
        @Injected(\.testValue) var testValue
        
        XCTAssertEqual(testValue, "I Love Tarantino Movies")
    }
}

