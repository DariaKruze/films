//
//  SecondViewController.swift
//  FilmsCode
//
//  Created by Даша Черняева on 17.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    let filmImageArray: [UIImage?] = [UIImage(named: "Witcher"), UIImage(named: "You"), UIImage(named: "Iforia")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
      //  title = "New"
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        //задаем прямоугольник Scrolla где будут кататься фильмы
        let scrollView = UIScrollView(frame: CGRect(x: 5, y: 0, width: view.frame.size.width - 10, height: view.frame.size.height))
        scrollView.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        
    //MARK: - Witcher
        //  Кнопка даты выхода фильма Witcher
        let dateButton = UIButton(frame: CGRect(x: 30, y: 540, width: 70, height: 100))
        dateButton.backgroundColor = .gray
        dateButton.layer.cornerRadius = 12
        dateButton.setTitle("Dec 20", for: .normal)
        scrollView.addSubview(dateButton)
       

        //  Кнопка описания фильма Witcher
        let textLabelWitcher = UILabel(frame: CGRect(x: 110, y: 540, width: view.frame.size.width - 140, height: 100))
        textLabelWitcher.backgroundColor = .systemCyan
        scrollView.addSubview(textLabelWitcher)
        textLabelWitcher.numberOfLines = 7
        textLabelWitcher.font = textLabelWitcher.font.withSize(15)
        textLabelWitcher.text = "Геральт из Ривии, наемный охотник за чудовищами, перенесший мутации, идет навстречу своей судьбе в неспокойном мире, где люди часто оказываются куда коварнее чудовищ."
        
        // постер фильма Witcher
        let imageContainerWitcher = UIImageView()
        imageContainerWitcher.backgroundColor = .gray
        imageContainerWitcher.image = filmImageArray[0]
        imageContainerWitcher.frame = CGRect(x: 30, y: 20, width: screenSize.width - 60, height: 500)
        scrollView.addSubview(imageContainerWitcher)

        
     //MARK: - YOU
        
        //  Кнопка даты выхода фильма YOU
        let dateButtonYou = UIButton(frame: CGRect(x: 30, y: 1180, width: 70, height: 100))
        dateButtonYou.backgroundColor = .gray
        dateButtonYou.layer.cornerRadius = 12
        dateButtonYou.setTitle("Dec 26", for: .normal)
        scrollView.addSubview(dateButtonYou)
        
        //  Кнопка описания фильма You
        let textLabelYou = UILabel(frame: CGRect(x: 110, y: 1180, width: view.frame.size.width - 140, height: 100))
        textLabelYou.backgroundColor = .systemCyan
        scrollView.addSubview(textLabelYou)
        textLabelYou.numberOfLines = 7
        textLabelYou.font = textLabelYou.font.withSize(15)
        textLabelYou.text = "Ужасно обаятельный, но крайне одержимый молодой человек не остановится ни перед чем, чтобы стать частью чьей-то жизни."
        
        // постер фильма You
        let imageContainerYou = UIImageView()
        imageContainerYou.backgroundColor = .gray
        imageContainerYou.image = filmImageArray[1]
        imageContainerYou.frame = CGRect(x: 30, y: 660, width: screenSize.width - 60, height: 500)
        scrollView.addSubview(imageContainerYou)
        
        //MARK: - Euphoria
        
        //  Кнопка даты выхода фильма Euphoria
        let dateButtonEuphoria = UIButton(frame: CGRect(x: 30, y: 1820, width: 70, height: 100))
        dateButtonEuphoria.backgroundColor = .gray
        dateButtonEuphoria.layer.cornerRadius = 12
        dateButtonEuphoria.setTitle("Jan 5", for: .normal)
        scrollView.addSubview(dateButtonEuphoria)

        //  Кнопка описания фильма Euphoria
        let textLabelEuphoria = UILabel(frame: CGRect(x: 110, y: 1820, width: view.frame.size.width - 140, height: 100))
        textLabelEuphoria.backgroundColor = .systemCyan
        scrollView.addSubview(textLabelEuphoria)
        textLabelEuphoria.numberOfLines = 7
        textLabelEuphoria.font = textLabelWitcher.font.withSize(15)
        textLabelEuphoria.text = "17-летняя Ру Беннетт возвращается домой после лечения в реабилитационной клинике. Не теряя времени, она опять берется за старые привычки — наркотики и тусовки. Однако появление в городе девушки Джулс становится для Ру знаком надежды."
        
        // постер фильма Euphoria
        let imageContainerEuphoria = UIImageView()
        imageContainerEuphoria.backgroundColor = .gray
        imageContainerEuphoria.image = filmImageArray[2]
        imageContainerEuphoria.frame = CGRect(x: 20, y: 1300, width: screenSize.width - 60, height: 500)
        scrollView.addSubview(imageContainerEuphoria)
        
        
        scrollView.contentSize = (CGSize(width: view.frame.size.width, height: 2000))
        
    }
}
