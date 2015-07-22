//
//  BitMaskOption.swift
//  SwiftFoundation
//
//  Created by Alsey Coleman Miller on 7/22/15.
//  Copyright © 2015 ColemanCDA. All rights reserved.
//

/// Bit mask that represents various options
public protocol BitMaskOption: RawRepresentable {
    
    
}

public extension BitMaskOption where Self.RawValue: IntegerType {
    
    static func optionsBitmask(options: [Self]) -> Self.RawValue {
        
        var mask: Self.RawValue = 0
        
        for option in options {
            
            mask = mask | option.rawValue
        }
        
        return mask
    }
}