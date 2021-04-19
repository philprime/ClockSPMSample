import UIKit
import ClockUI
import Combine

public class ClockViewController: UIViewController {

    // MARK: - Services

    private let service = ClockService()
    private var timeCancellable: AnyCancellable!

    // MARK: - IB Outlets

    @IBOutlet weak var timeLabel: UILabel!

    // MARK: - IB Actions

    @IBAction func didTapFetchButtonAction() {
        service.fetchTime()
    }

    // MARK: - View Life Cycle

    public override func viewDidLoad() {
        super.viewDidLoad()
        timeCancellable = service.currentTime
            .sink(receiveValue: { self.timeLabel.text = $0 })
    }

    // MARK: - Nib Loading

    public static func loadFromNib() -> ClockViewController {
        // Load the compiled XIB = NIB file from the module resources bundle
        ClockViewController(nibName: "ClockViewController_iOS", bundle: Bundle.module)
    }
}
