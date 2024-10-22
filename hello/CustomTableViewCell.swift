//
//  CustomTableViewCell.swift
//  hello
//
//  Created by Maks Valeev on 22.10.2024.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    private var viewWithImage = UIImageView()
    private var viewWithTextLabels = UIView()
    var headerLabel = UILabel()
    var mainLabel = UILabel()
    var timeLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        setConstraints()
    }
    
    private func setViews() {
        contentView.addSubview(viewWithImage)
        contentView.addSubview(viewWithTextLabels)
        viewWithTextLabels.addSubview(headerLabel)
        viewWithTextLabels.addSubview(mainLabel)
        viewWithTextLabels.addSubview(timeLabel)
        viewWithImage.backgroundColor = Constants.Color.imageViewColor
        viewWithImage.layer.cornerRadius = 8
        mainLabel.numberOfLines = 0
    }
    
    private func setConstraints() {

        viewWithImage.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.leading.equalToSuperview()
            make.top.equalToSuperview().inset(16)
        }
        viewWithTextLabels.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(16)
            make.leading.equalTo(viewWithImage.snp.trailing).offset(16)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview().inset(16)
        }
        headerLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
        }
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(headerLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().offset(8)
            make.bottom.equalToSuperview()
        }
        timeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(2)
            make.trailing.equalToSuperview()
        }
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
