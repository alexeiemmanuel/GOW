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
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right swipe")
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left swipe")
        
        if gamePageControl.currentPage == posters.count-1 {
           gamePageControl.currentPage = 0
           gamePosterImage.image = UIImage(named: String(gamePageControl.currentPage))
        }else{
           gamePageControl.currentPage = gamePageControl.currentPage + 1
           gamePosterImage.image = UIImage(named: String(gamePageControl.currentPage))
        }
            
    }
}
