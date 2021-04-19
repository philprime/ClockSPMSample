import Foundation
import Combine

public class ClockService {

    public var currentTime = PassthroughSubject<String, Never>()

    public init() {}

    public func fetchTime() {
        let formatter = DateFormatter()
        formatter.timeStyle = .full
        currentTime.send(formatter.string(from: Date()))
    }
}
