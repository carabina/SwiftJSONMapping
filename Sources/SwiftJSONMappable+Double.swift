//
//  SwiftJSONMappable+Double.swift
//  Sample
//
//  Created by 马强 on 2016/12/31.
//  Copyright © 2016年 马强. All rights reserved.
//

import Foundation

extension Double: SwiftJSONMappable {
    
    public init?(json: Any?) {
        guard let number = json as? NSNumber else { return nil }
        self = number.doubleValue
    }
    
    public var json: Any { return self }
}