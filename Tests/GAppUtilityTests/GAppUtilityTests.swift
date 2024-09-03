
import XCTest
@testable import GAppUtility

final class NetworkUtilityTests: XCTestCase {
    
    func testIsInternetAvailable() {
        // This test requires mocking SCNetworkReachability which might require a different testing strategy.
        XCTAssertTrue(NetworkUtility.isInternetAvailable)
    }
    
    func testIsConnectedToVPN() {
        let isConnected = NetworkUtility.isConnectedToVPN
        XCTAssertEqual(isConnected, false)  // This assumes VPN is not connected during test.
    }
}
