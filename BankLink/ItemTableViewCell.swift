import UIKit

class ItemTableViewCell: UITableViewCell {

    var AmountLabel: UILabel!
    var DetailLabel: UILabel!
    var ExtraLabel: UILabel?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        // Initialization code
        setupUI()
    }

    private func setupUI() {
        // Create DetailLabel
        DetailLabel = UILabel()
        DetailLabel.textColor = .black
        DetailLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(DetailLabel)

        // Create AmountLabel
        AmountLabel = UILabel()
        AmountLabel.textColor = .black
        AmountLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(AmountLabel)

        // Create ExtraLabel (optional)
        ExtraLabel = UILabel()
        ExtraLabel?.textColor = .black
        ExtraLabel?.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(ExtraLabel!)

        // You may need to adjust the layout constraints based on your design
        setupConstraints()
    }

    private func setupConstraints() {
        // Constraints for DetailLabel (on the left)
        NSLayoutConstraint.activate([
            DetailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            DetailLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])

        // Constraints for AmountLabel (in the center)
        NSLayoutConstraint.activate([
            AmountLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            AmountLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])

        // Constraints for ExtraLabel (on the right)
        NSLayoutConstraint.activate([
            ExtraLabel!.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            ExtraLabel!.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }

    // Method to configure the cell with or without ExtraLabel
    func configure(withExtraLabel: Bool) {
        ExtraLabel?.isHidden = !withExtraLabel
    }
    
    // ... (other methods)
}
