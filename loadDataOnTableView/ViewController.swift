//
//  ViewController.swift
//  loadDataOnTableView
//
//  Created by CH 002 on 01/10/22.
//

import UIKit
struct contactDetalils {
    var image : String
    var number : Int
}

class ViewController: UIViewController {
    
    struct data {
        var  image : String
        var  name : String
        var num : Int
    }
    
    @IBOutlet weak var conatctTable: UITableView!
    
    var details = [[data(image: "Anju", name: "Anju", num: 123),data(image: "Ann", name: "Ann", num: 124)],[data(image: "Beena", name: "Beena", num: 125),data(image: "Bincy", name: "Bincy", num: 126)]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conatctTable.dataSource = self
        conatctTable.delegate = self
    }
    
    
}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return details.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        for i in details[section] {
            let item = i.name
            if let first = item.first{
                return String(first).capitalized
            }
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactTableViewCell") as! contactTableViewCell
        let inpt = details[indexPath.section][indexPath.row]
        cell.contactImage.image = UIImage(named: "\(inpt.image)")
        cell.contactImage.layer.cornerRadius = 50
        cell.contactName.text = "\(inpt.name)"
        cell.phoneNumber.text = "\(inpt.num)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "secViewController") as! secViewController
        vc.titleValue = details[indexPath.section][indexPath.row].name
        vc.secimg = details[indexPath.section][indexPath.row].image
        vc.seclbl = details[indexPath.section][indexPath.row].name
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
