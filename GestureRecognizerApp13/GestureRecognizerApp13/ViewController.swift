//
//  ViewController.swift
//  GestureRecognizerApp13
//
//  Created by Yavuz Güner on 17.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var isJason = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Amacımız görsele tıkladığımız zaman resmin değişmesi. Bunun için öncelikle görseli tıklanabilir yapmamız lazım.
        
        //bu tıklamayı açmamızı sağlıyor.
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePicture(){
        
        //Eğer tekrarlarsak sabir kalmasın sürekli tekrar etsin diye yazıyoruz bu kodu.
        
        if isJason == true{
            //isimden resim bul diyoruz burada.
                   imageView.image = UIImage(named: "JamesBond")
                   nameLabel.text = "James Bond"
            isJason = false
        }
        else{
            imageView.image = UIImage(named: "JasonBourne")
            nameLabel.text = "Jason Bourne"
            isJason = true
        }
    }

}

