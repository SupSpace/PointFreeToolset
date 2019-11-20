import XCTest
@testable import PointFreeToolset

class OperatorTests: XCTestCase {
    
    func incr(a: Int) -> Int {
        return a + 1
    }
    
    func square(a: Int) -> Int {
        return a * a
    }
    
    func testPipe() {
        XCTAssertEqual(2 |> incr, 3)
    }
    
    func testForwardCompose() {
        XCTAssertEqual(2 |> incr >>> square >>> String.init, "9")
    }
    
    func testDiamond() {
        let mix = square <> incr
        XCTAssertEqual(2 |> mix, 5)
    }
}




