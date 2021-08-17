import XCTest
import SwiftUI
import SwiftUIColorUtils


class ThemeColorGroupTests: XCTestCase {
    private typealias SystemUnderTest = ThemeColorGroup
    
    private var sut: SystemUnderTest!
    private var bundle: Bundle!
}


// MARK: - Lifecycle
extension ThemeColorGroupTests {
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        bundle = .module
        sut = makeSUT()
    }
    
    
    override func tearDownWithError() throws {
        bundle = nil
        sut = nil
        
        try super.tearDownWithError()
    }
}


// MARK: - Factories
extension ThemeColorGroupTests {
    
    private func makeSUT() -> SystemUnderTest {
        .init(
            primary: TestConstants.ThemeColors.Group1.primary,
            secondary1: TestConstants.ThemeColors.Group1.secondary1,
            secondary2: TestConstants.ThemeColors.Group1.secondary2,
            secondary3: TestConstants.ThemeColors.Group1.secondary3,
            pop1: TestConstants.ThemeColors.Group1.pop1,
            pop2: TestConstants.ThemeColors.Group1.pop2,
            pop3: TestConstants.ThemeColors.Group1.pop3
        )
    }
    
    /// Helper to make the system under test from any default initializer
    /// and then test its initial conditions
    private func makeSUTFromDefaults() -> SystemUnderTest {
        .init(
            primary: TestConstants.ThemeColors.Group1.primary,
            secondary1: TestConstants.ThemeColors.Group1.secondary1,
            pop1: TestConstants.ThemeColors.Group1.pop1
        )
    }
}


// MARK: - "Given" Helpers (Conditions Exist)
extension ThemeColorGroupTests {
    
    private func givenSomething() {
        // some state or condition is established
    }
}


// MARK: - "When" Helpers (Actions Are Performed)
extension ThemeColorGroupTests {
    
    private func whenSomethingHappens() {
        // perform some action
    }
}


// MARK: - Test Initial Conditions From Default Initialization
extension ThemeColorGroupTests {
    
    func test_Init_WithDefaultProperties_UsesSystemPrimaryColorForAdditionalSeconaryAndPopColors() throws {
        sut = makeSUTFromDefaults()
        
        XCTAssertEqual(sut.secondary2, .primary)
        XCTAssertEqual(sut.secondary3, .primary)
        XCTAssertEqual(sut.pop2, .primary)
        XCTAssertEqual(sut.pop3, .primary)
    }
}
