//
//  wage.swift
//  window-shopper
//
//  Created by Sebastian Salamanca on 1/13/18.
//  Copyright © 2018 Sebastian Salamanca. All rights reserved.
//

import Foundation


class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }

}
