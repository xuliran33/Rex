//
//  RegexHelper.swift
//  Rex
//
//  Created by gdj003 on 16/5/31.
//  Copyright (c) 2016年 xuliran. All rights reserved.
//

import UIKit

struct RegexHelper {
    let regex : NSRegularExpression?
    // _ 隐藏外部参数名
    init(_ pattern : String) {
        var error : NSError?
        regex = NSRegularExpression(pattern: pattern, options: NSRegularExpressionOptions.CaseInsensitive, error: &error)
    }
    
    func match(input: String) -> Bool{
        if let matches = regex?.matchesInString(input, options: nil, range: NSMakeRange(0, count(input))){
            return matches.count > 0
        }else{
            return false
        }
    }
}