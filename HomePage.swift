import UIKit
import WebKit

class ComingSoonViewController: UIViewController {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Coming Soon!"
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.textAlignment = .center
        return label
    }()

    private let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Stay Tuned"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        view.addSubview(titleLabel)
        view.addSubview(messageLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),

            // Added bottom anchor
            messageLabel.bottomAnchor.constraint(equalTo:view.bottomAnchor, constant: -20)
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            messageLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            messageLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40)
        ])
    }
}