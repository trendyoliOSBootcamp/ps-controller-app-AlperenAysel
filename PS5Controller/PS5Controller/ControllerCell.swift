//
//  ControllerCell.swift
//  PS5Controller
//
//  Created by Alperen Aysel on 6.05.2021.
//

import UIKit

final class ControllerCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    func configure(with image: UIImage) {
        imageView.image = image
    }
    static func nib() -> UINib {
        return UINib(nibName: "ControllerCell", bundle: nil)
    }
}
