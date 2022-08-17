//
//  ViewController.swift
//  DemoApp
//
//  Created by Lucas Paim on 17/08/22.
//

import UIKit


class ViewController: UIViewController {

    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.delegate = self
        table.dataSource = self
        table.register(IconCell.self, forCellReuseIdentifier: "IconCell")
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = DataStore.allBooksData[indexPath.row - 1]
        let alert = UIAlertController(title: "Alerta", message: "Você selecionou o livro \(item.title)", preferredStyle: .alert)
        alert.addAction(.init(title: "OK", style: .default))
        alert.addAction(.init(title: "Cancel", style: .destructive))
        show(alert, sender: nil)
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStore.allBooksData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IconCell") as! IconCell
        cell.titleLabel.text = DataStore.allBooksData[indexPath.row].title
        if let imageData = try? Data(contentsOf: DataStore.allBooksData[indexPath.row].url) {
            cell.iconImage.image = UIImage(data: imageData)
        }
        return cell
    }
}
