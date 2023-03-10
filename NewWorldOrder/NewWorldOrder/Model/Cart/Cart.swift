//
//  Cart.swift
//  NewWorldOrder
//
//  Created by Adam Novak on 2023/02/04.
//

import Foundation

struct Cart: Codable {
    var items: [MenuItem]
    
    var totalPrice: Double {
        var totalPrice: Double = 0
        for item in items {
            totalPrice += item.price
        }
        return totalPrice
    }
    
    var totalPriceString: String {
        return "$\(totalPrice)\(totalPrice % 10 == 0 ? "0" : "")"
    }
    
    var tax: Double {
        return totalPrice * 0.2
    }
}

func %<N: BinaryFloatingPoint>(lhs: N, rhs: N) -> N {
    lhs.truncatingRemainder(dividingBy: rhs)
}
