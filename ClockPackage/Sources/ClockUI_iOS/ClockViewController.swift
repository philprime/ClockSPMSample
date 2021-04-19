import UIKit

public class ClockViewController: UIViewController {

    // MARK: - IB Outlets

    @IBOutlet weak var timeLabel: UILabel!

    // MARK: - IB Actions

    @IBAction func didTapFetchButtonAction() {
        print("did tap fetch")
    }

    // MARK: - Nib Loading

    public static func loadFromNib() -> ClockViewController {
        // Load the compiled XIB = NIB file from the module resources bundle
        ClockViewController(nibName: "ClockViewController_iOS", bundle: Bundle.module)
    }
}
