//
//  DetailsViewController.swift
//  Superkahramanlar
//
//  Created by Sueda Beyza Özcan on 24.07.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    var secilenKahramanIsimi = ""
    var secilenKahramnGorselIsimi = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: secilenKahramnGorselIsimi)
        Label.text = secilenKahramanIsimi
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
