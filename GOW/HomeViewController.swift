//
//  HomeViewController.swift
//  GOW
//
//  Created by Alexei Emmanuel Martínez Mendoza on 03/12/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var menuTableView: UITableView!
    
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"Videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"Personajes",
                image:"person.crop.rectangle.stack.fill",
                segue:"charactersSegue")
            , MenuOption(
                title:"Armas",
                image:"shield.fill",
                segue:"weaponsSegue")
            ,MenuOption(
                title:"Tienda",
                image:"shippingbox.fill",
                segue:"merchandiseSegue")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menuOptionCell = tableView.dequeueReusableCell(withIdentifier: "menuOption", for: indexPath) as! MenuOptionCell
        
        menuOptionCell.menuOptionImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        menuOptionCell.menuOptionLabel.text = menuOptions[indexPath.row].title
        
        
        return menuOptionCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: Self.self)
    }
}
