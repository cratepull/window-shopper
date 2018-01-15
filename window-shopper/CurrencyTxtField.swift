//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Sebastian Salamanca on 1/13/18.
//  Copyright © 2018 Sebastian Salamanca. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat  = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
        
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizrView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizrView()
        
       
    }
    
    
    func customizrView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p =  placeholder {
            let place = NSAttributedString(string:p,  attributes: [NSForegroundColorAttributeName: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}
 
