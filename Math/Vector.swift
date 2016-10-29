//
//  Vector.swift
//  Math
//
//  Created by Daher Alfawares on 10/28/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


public class Vector {
    var x : CGFloat
    var y : CGFloat
    
    init(){
        x = 0
        y = 0
    }
    init(x:CGFloat,y:CGFloat){
        self.x = x
        self.y = y
    }
    
    init(point:CGPoint){
        x = CGFloat(point.x)
        y = CGFloat(point.y)
    }
    
    init(size:CGSize){
        x = CGFloat(size.width)
        y = CGFloat(size.height)
    }
    
    
    func asPoint() -> CGPoint {
        return CGPoint(x:x,y:y)
    }
    
    func asSize() -> CGSize {
        return CGSize(width: x, height: y)
    }
}


public extension Vector {
    static func + (left: Math.Vector, right: Math.Vector) -> Math.Vector {
        return Math.Vector(x: left.x + right.x, y: left.y + right.y)
    }
    static func - (left: Math.Vector, right: Math.Vector) -> Math.Vector {
        return Math.Vector(x: left.x - right.x, y: left.y - right.y)
    }
    static func * (left: Math.Vector, right: CGFloat) -> Math.Vector {
        return Math.Vector(x: left.x*right, y: left.y*right)
    }
    static func / (left: Math.Vector, right: CGFloat) -> Math.Vector {
        return Math.Vector(x: left.x/right, y: left.y/right)
    }
}
