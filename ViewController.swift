//
//  ViewController.swift
//  Superkahramanlar
//
//  Created by Sueda Beyza Özcan on 24.07.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var superKahramanIsimleri = [String]()
    var superkahramngorselisimleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Captan Amerika")
        superKahramanIsimleri.append("İronman")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Superman")
        
        
        superkahramngorselisimleri.append("batman")
        superkahramngorselisimleri.append("captan_america")
        superkahramngorselisimleri.append("ironman")
        superkahramngorselisimleri.append("spiderman")
        superkahramngorselisimleri.append("superman")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return superkahramngorselisimleri.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superkahramngorselisimleri.remove(at: indexPath.row)
            superKahramanIsimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superkahramngorselisimleri[indexPath.row]
        secilenGorsel = superkahramngorselisimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsimi = secilenGorsel
            destinationVC.secilenKahramnGorselIsimi = secilenGorsel
        } 
        }
    }



