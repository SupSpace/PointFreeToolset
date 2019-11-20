import XCTest
@testable import PointFreeToolset

class PairTests: XCTestCase {

    func incr(a: Int) -> Int {
        return a + 1
    }
    
    func testExample() {
        let pair = (0, 1)
        XCTAssertEqual((pair |> first(f: incr) |> first(f: String.init)).0, "1")
        XCTAssertEqual((pair |> second { $0 + 1 } |> second(String.init)).1, "2")
    }
}
