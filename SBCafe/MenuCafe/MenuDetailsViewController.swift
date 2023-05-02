//
//  MenuDetailsViewController.swift
//  SBCafe
//
//  Created by Елена Рудакова on 02.05.2023.
//

import UIKit

class MenuDetailsViewController: UIViewController {

    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var menuTitleLabel: UILabel!
    @IBOutlet var priceTitleLabel: UILabel!
    
    @IBOutlet var orderButton: UIButton!
    var menuCafe: Menu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dishImageView.image = UIImage(named: menuCafe.title)
        menuTitleLabel.text = menuCafe.dishMenu
        priceTitleLabel.text = menuCafe.priceMenu
        orderButton.layer.cornerRadius  = 10

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation - переход

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
