//
//  TabBarController.swift
//  FilmsCode
//
//  Created by Даша Черняева on 17.03.2022.
//

import UIKit

class TabBarVCMain:UITabBarController {
    

let vc1 = FirstViewController()
let vc2 = SecondViewController()
let vc3 = ThirdViewController()




override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .systemBackground
    tabBar.tintColor = .label
    vc1.tabBarItem.image = UIImage(systemName: "house")
    setupVCs()
}

    // функция на создание навигационного контроллера
    func createNavController(for rootViewController: UIViewController,
                             title: String,
                             image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.image = image
        navController.tabBarItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    // функция на изображение навигационных контролллеров и привязки к экранам
    func setupVCs() {
        viewControllers = [
            vc1,
            createNavController(for: vc2, title: NSLocalizedString("Новинки", comment: ""), image: UIImage(systemName: "film")!),
            createNavController(for: vc3, title: NSLocalizedString("Профиль", comment: ""), image: UIImage(systemName: "person")!)]
    }
}

//    extension UIViewController {
//        // функция для всплывающих окон
//        func setupAlert() {
//            let alert = UIAlertController(title: "Netflix", message: "Добро пожаловать в домашний кинотеатр Netflix", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: .none))
//            present(alert, animated: true)
//        }
//}

