//
//  secViewController.swift
//  loadDataOnTableView
//
//  Created by CH 002 on 02/10/22.
//

import UIKit

class secViewController: UIViewController {
    
    
    @IBOutlet weak var secLabel: UILabel!
    
    @IBOutlet weak var secImage: UIImageView!
    
    var secimg  : String?
    var seclbl :String?
    var titleValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = titleValue
        secImage.image = UIImage(named:secimg!)
        secLabel.text = seclbl
    }
    


}
