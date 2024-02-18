//
//  CustomTableViewCell.swift
//  primeiroAppTableViewCurso
//
//  Created by Jefferson Alves on 15/02/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    
    static let indentifier: String = "CustomTableViewCell"
    
    //MARK: a nib é uma referencia para identificar qual é o nosso arquivo da chib
    static func nib() -> UINib {
        return UINib(nibName: self.indentifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        TitleLabel.text = "Jeff Alves"
       
    }
    
}