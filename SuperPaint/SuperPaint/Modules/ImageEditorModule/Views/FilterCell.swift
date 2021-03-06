//
//  FilterCell.swift
//  SuperPaint
//
//  Created by Stanislav on 23/12/2019.
//  Copyright © 2019 Fixiki. All rights reserved.
//

import UIKit

final class FilterCell: UICollectionViewCell
{
	let imageView = UIImageView()
	let label = UILabel()
	static let cellReuseIdentifier = "filterCell"

	override var isSelected: Bool {
		didSet {
			self.label.textColor = isSelected ? UIConstants.systemButtonColor : .black
		}
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		setupInitialState()
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

private extension FilterCell
{
	func setupInitialState() {
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.clipsToBounds = true
		imageView.contentMode = .scaleAspectFill
		imageView.layer.masksToBounds = true
		imageView.layer.cornerRadius = UIConstants.filterCellCornerRadius
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = Fonts.sliderFont
		label.textAlignment = .center
		label.textColor = UIConstants.textColor
		self.addSubview(imageView)
		self.addSubview(label)
		NSLayoutConstraint.activate([
			imageView.topAnchor.constraint(equalTo: self.topAnchor),
			imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			label.bottomAnchor.constraint(equalTo: self.bottomAnchor),
			label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			label.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			imageView.bottomAnchor.constraint(equalTo: label.topAnchor),
			label.heightAnchor.constraint(equalToConstant: label.font.pointSize + 1),
		])
	}
}
