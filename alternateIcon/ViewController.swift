//
//  ViewController.swift
//  alternateIcon
//
//  Created by Sugeun Jun on 2022/10/15.
//

import UIKit

class ViewController: UITableViewController {
    
    private let icons = AlternateIcon.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        icons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var configuration = cell.defaultContentConfiguration()
        configuration.imageProperties.maximumSize = CGSize(width: 56.0, height: 56.0)
        let iconInfo = icons[indexPath.row]
        configuration.image = UIImage(named: iconInfo.rawValue)
        configuration.text = iconInfo.rawValue
        cell.contentConfiguration = configuration
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedIcon = icons[indexPath.row]
        UIApplication.shared.setAlternateIconName(selectedIcon.iconName) { error in
            if let error {
                print(error.localizedDescription)
            } else {
                UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
            }
        }
    }
}
