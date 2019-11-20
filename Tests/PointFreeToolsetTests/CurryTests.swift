import XCTest
@testable import PointFreeToolset

class CurryTests: XCTestCase {
    
    func testCurry() {
        /// 这里其实也可以不写清楚类型，只是因为 String.init 方法会有歧义，所以写出来了
        let originFunc: (Character, Int) -> String = String.init(repeating:count:)
        let curryFunc = curry(originFunc)
        XCTAssertEqual(curryFunc("s")(3), "sss")
        
        let flipCurryFunc = flip(curryFunc)
        XCTAssertEqual(flipCurryFunc(3)("s"), "sss")
    }

}
