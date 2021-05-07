//
//  ViewController.swift
//  PS5Controller
//
//  Created by Alperen Aysel on 6.05.2021.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var controllerTabView: UIView!
    @IBOutlet private weak var devicesTabView: UIView!
    @IBOutlet private weak var mouseTabView: UIView!
    
    private let products: [Product] = [.init(image: UIImage(named: "whitePSController")!),
                               .init(image: UIImage(named: "blackPSController")!),
                               .init(image: UIImage(named: "whitePSController")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.register(ControllerCell.nib(), forCellWithReuseIdentifier: "ControllerCell")
    }
    @IBAction private func basketTapped() {
        print("tapped")
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ControllerCell", for: indexPath) as! ControllerCell
        let product = products[indexPath.item]
        cell.configure(with: product.image)
        return cell
    }
}
extension UIViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (collectionView.frame.width - 28 - 24) / 1.3982
        // ratio w/h 231.0 / 291.0
        print(cellWidth)
        return .init(width: cellWidth, height: cellWidth / 0.7938)
    }
}
