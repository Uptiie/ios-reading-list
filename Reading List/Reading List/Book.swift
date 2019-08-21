//
//  Book.swift
//  Reading List
//
//  Created by Uptiie on 6/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Book: Equatable, Codable {
   let title: String
   let reasonToRead: String
   let hasBeenRead: Bool

    }
    
    

struct ShippingOptions: OptionSet {
    let rawValue: Int
    
    static let nextDay    = ShippingOptions(rawValue: 1 << 0)
    static let secondDay  = ShippingOptions(rawValue: 1 << 1)
    static let priority   = ShippingOptions(rawValue: 1 << 2)
    static let standard   = ShippingOptions(rawValue: 1 << 3)
    
    static let express: ShippingOptions = [.nextDay, .secondDay]
    static let all: ShippingOptions = [.express, .priority, .standard]
}




