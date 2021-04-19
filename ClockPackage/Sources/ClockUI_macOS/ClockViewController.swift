import AppKit
import ClockUI
import Combine

public class ClockViewController: NSViewController {

    // MARK: - Services

    private let service = ClockService()
    private var timeCancellable: AnyCancellable!

    // MARK: - IB Outlets

    @IBOutlet weak var timeLabel: NSTextField!

    // MARK: - IB Action

    @IBAction func didClickFetchButtonAction(_ sender: Any) {
        service.fetchTime()
    }

    // MARK: - View Life Cycle

    public override func viewDidLoad() {
        super.viewDidLoad()
        timeCancellable = service.currentTime
            .assign(to: \.stringValue, on: timeLabel)
    }

    // MARK: - Nib Loading

    public static func loadFromNib() -> ClockViewController {
        // Load the compiled XIB = NIB file from the module resources bundle
        ClockViewController(nibName: "ClockViewController_macOS", bundle: Bundle.module)
    }
}
