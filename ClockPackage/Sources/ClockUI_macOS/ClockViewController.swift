import AppKit

public class ClockViewController: NSViewController {

    // MARK: - IB Outlets

    @IBOutlet weak var timeLabel: NSTextField!

    // MARK: - IB Action

    @IBAction func didClickFetchButtonAction(_ sender: Any) {
        print("did click fetch")
    }

    // MARK: - Nib Loading

    public static func loadFromNib() -> ClockViewController {
        // Load the compiled XIB = NIB file from the module resources bundle
        ClockViewController(nibName: "ClockViewController_macOS", bundle: Bundle.module)
    }
}
