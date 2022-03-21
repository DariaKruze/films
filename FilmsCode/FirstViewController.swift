//
//  FirstViewController.swift
//  FilmsCode
//
//  Created by Даша Черняева on 17.03.2022.
//

import UIKit

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Главная"
         
       
        let imageName = "Netflix"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            
            view.addSubview(imageView)
//           
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    }
}
