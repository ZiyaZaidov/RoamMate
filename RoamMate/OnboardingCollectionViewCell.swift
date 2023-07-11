//
//  OnboardingCollectionViewCell.swift
//  RoamMate
//
//  Created by ziya on 11.07.23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    func configure(_ slide: OnboardingModel) {
        imageView.image = slide.image
        titleLabel.text = slide.title
        subtitleLabel.text = slide.subtitle
    }
}
