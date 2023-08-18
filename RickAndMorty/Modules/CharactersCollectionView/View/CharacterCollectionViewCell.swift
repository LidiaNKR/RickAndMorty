//
//  CharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Static properties
    static let identifier = "characterCell"
    
    //MARK: - Private properties
    private let characterImageView: NetworkImageView = {
        let imageView = NetworkImageView(frame: .zero)
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = Constant.cornerRadiusOfImageCell
        return imageView
    }()
    
    private let characterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = Constant.cellBackGroundColor
        contentView.layer.cornerRadius = Constant.cornerRadiusOfCell
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    weak var viewModel: CollectionViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            characterImageView.fetchImage(from: viewModel.characterImage)
            characterLabel.text = viewModel.characterName
        }
    }
    
    // MARK: - Private methods
    private func setUpConstraints() {
        contentView.addSubview(characterImageView)
        contentView.addSubview(characterLabel)
        NSLayoutConstraint.activate([
            characterImageView.heightAnchor.constraint(
                equalToConstant: Constant.heightOfImageCell
            ),
            characterImageView.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: Constant.leadingAndTrailingAnchor
            ),
            characterImageView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: Constant.leadingAndTrailingAnchor
            ),
            characterImageView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -Constant.leadingAndTrailingAnchor
            ),
            
            characterLabel.topAnchor.constraint(
                equalTo: characterImageView.bottomAnchor,
                constant: Constant.topAndButtomAnchor
            ),
            characterLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: Constant.leadingAndTrailingAnchor
            ),
            characterLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -Constant.leadingAndTrailingAnchor
            ),
            characterLabel.bottomAnchor.constraint(
                equalTo: contentView.bottomAnchor,
                constant: -Constant.topAndButtomAnchor
            )
        ])
    }
}
