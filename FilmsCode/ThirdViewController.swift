//
//  ThirdViewController.swift
//  FilmsCode
//
//  Created by Даша Черняева on 17.03.2022.
//

import UIKit

struct Category {
    let title: String
    let items: [String]
}

class ThirdViewController: UIViewController {
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private let data: [Category] = [
       Category(title: "Аккаунт", items: ["Редактировать профиль", "Уведомления","Понравившееся"]),
       Category(title: "Привязанные устройства", items: ["Mac 14'", "Iphone(X)", "Samsung TV"]),
       Category(title: "Загрузки", items: []),
       Category(title: "Настройки", items: ["Качество видео", "Восстановление подписки", "Оформлениие"])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension ThirdViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let category = data[indexPath.row]
        
        let vc = ListViewController(items: category.items)
        vc.title = category.title
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].title
        
        if indexPath.row == 0 {
            cell.accessoryType = .disclosureIndicator
        }
        if indexPath.row == 1 {
            cell.accessoryType = .disclosureIndicator
        }
        if indexPath.row == 2 {
            cell.accessoryType = .disclosureIndicator
        }
        if indexPath.row == 3 {
            cell.accessoryType = .disclosureIndicator
        }
        
        return cell
    }
}
    
//    struct Category {
//            let title: String
//            let items: [String]
//        }
//
//   // let cellIdentifier = "Cell"
//
//    private lazy var tableView: UITableView = {
//        let tableView = UITableView (frame: CGRect.zero, style: .grouped)
//     //   tableView.register(UITableViewCell.self, forHeaderFooterViewReuseIdentifier: "cell")
//
////        tableView.tableHeaderView = headerView
////            tableView.tableFooterView = footerView
//        return tableView
//    }()
//
////    private lazy var headerView: UILabel = {
////        let label = UILabel()
////        label.text = "Text header"
////        return label
////    }()
////
////    private lazy var footerView: UILabel = {
////        let label = UILabel()
////        label.text = "Text footer"
////        return label
////    }()
//
//   private let setting: [Category] = [
//   Category(title: "Аккаунт", items: ["Редактировать профиль", "Уведомления","Понравившееся"]),
//   Category(title: "Привязанные устройства", items: ["Mac 14'", "Iphone(X)", "Samsung TV"]),
//   Category(title: "Загрузки", items: []),
//   Category(title: "Настройки", items: ["Качество видео", "Восстановление подписки", "Оформлениие"])
//   ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(tableView)
//
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        tableView.dataSource = self
//        tableView.delegate = self
//        setupViews()
//        setupConstrains()
//    }
//
//    private func setupViews() {
//        view.addSubview(tableView)
//    }
//
//    private func setupConstrains() {
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//    }
//}
//
//extension ThirdViewController: UITableViewDataSource {
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        setting.count
//    }
//
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = setting[indexPath.row].title
//
//
//        if indexPath.row == 0 {
//            cell.accessoryType = .disclosureIndicator
//        }
//        if indexPath.row == 1 {
//            cell.accessoryType = .disclosureIndicator
//        }
//        if indexPath.row == 2 {
//            cell.accessoryType = .disclosureIndicator
//        }
//        if indexPath.row == 3 {
//            cell.accessoryType = .disclosureIndicator
//        }
////
//        return cell
//    }
//
//}
//
//class TableViewCell: UITableViewCell {
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        self.accessoryType = .none
//    }
//}
//
//extension ThirdViewController: UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let category = setting[indexPath.row]
//
//        let vc = ListViewController(items: category.items)
//                vc.title = category.title
//                navigationController?.pushViewController(vc, animated: true)
//    }
//}
    



//
//    private let setting: [Category] = [
//      Category(title: "Аккаунт", items: ["Редактировать профиль", "Уведомления","Понравившееся"]),
//      Category(title: "Привязанные устройства", items: ["Mac 14'", "Iphone(X)", "Samsung TV"]),
//      Category(title: "Загрузки", items: []),
//      Category(title: "Привязанные устройства", items: ["Mac 14'", "Iphone(X)", "Samsung TV"]),
//      Category(title: "Настройки", items: ["Качество видео", "Восстановление подписки", "Оформлениие"])
//      ]
//
//    override func viewDidLoad() {
//           super.viewDidLoad()
//        view.addSubview(tableView)
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//
//
//}
//
//extension ThirdViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let category = setting[indexPath.row]
//
//        let vc = ListViewController(items: category.items)
//        vc.title = category.title
//        navigationController?.pushViewController(vc, animated: true)
//    }
//}
//
//extension ThirdViewController:UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return setting.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = setting[indexPath.row].title
//        return cell
//    }
// }
