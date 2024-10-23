//
//  ViewController.swift
//  hello
//
//  Created by Maks Valeev on 22.10.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setColorVC()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "customCell")
        setConstraints()
    }
    
    func setColorVC() {
        tableView.backgroundColor = .yellow
    }
    
    private func setConstraints() {
        tableView.snp.makeConstraints { make in
            make.width.height.equalToSuperview()
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.headerLabel.text = Constants.Text.headerLabelText
        cell.headerLabel.font = Constants.Fonts.UI16SemiBold
        
        cell.mainLabel.text = Constants.Text.mainLabelText
        cell.mainLabel.font = Constants.Fonts.UI16Regular
        
        cell.timeLabel.text = Constants.Text.timeLabelText
        cell.timeLabel.font = Constants.Fonts.UI16Regular
        cell.timeLabel.textColor = Constants.Color.timeLabelColor
        return cell
    }
    
    
}

