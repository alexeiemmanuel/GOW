//
//  GamesViewController.swift
//  GOW
//
//  Created by Alexei Emmanuel Martínez Mendoza on 03/12/22.
//

import UIKit

class GamesViewController: UIViewController {

    
    let posters = Array(0...7)
    
    @IBOutlet var gamePosterImage: UIImageView!
    @IBOutlet var gamePageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gamePageControl.numberOfPages = posters.count
        gamePageControl.currentPage = 0
        gamePosterImage.image = UIImage(named: String(posters.first!))
        
    }
    
    /// Método que captura el evento de derecha a la izquierda
    /// - Parameter sender: Cualquira
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right swipe")
        
        if gamePageControl.currentPage == 0 {
            print("Se vuelve al final")
            gamePageControl.currentPage = posters.count-1
            gamePosterImage.image = UIImage(named: String(gamePageControl.currentPage))
        } else {
            gamePageControl.currentPage = gamePageControl.currentPage - 1
            gamePosterImage.image = UIImage(named: String(gamePageControl.currentPage))
        }
        
    }
    
    /// Método que captura el evento touch de la izquierda a la derecha
    /// - Parameter sender: Cualquira
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left swipe")
        
        if gamePageControl.currentPage == posters.count-1 {
           print("Se vuelve al inicio")
           gamePageControl.currentPage = 0
           gamePosterImage.image = UIImage(named: String(gamePageControl.currentPage))
        } else {
           gamePageControl.currentPage = gamePageControl.currentPage + 1
           gamePosterImage.image = UIImage(named: String(gamePageControl.currentPage))
        }
            
    }
}
