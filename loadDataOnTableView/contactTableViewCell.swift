//
//  contactTableViewCell.swift
//  loadDataOnTableView
//
//  Created by CH 002 on 02/10/22.
//

import UIKit

class contactTableViewCell: UITableViewCell {
    

    @IBOutlet weak var contactImage: UIImageView!
    
    @IBOutlet weak var contactName: UILabel!
    
    @IBOutlet weak var phoneNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
