//
//  Vector.swift
//  Math
//
//  Created by Daher Alfawares on 10/28/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


open class Vector {
    var x : CGFloat
    var y : CGFloat
    
    public init(){
        x = 0
        y = 0
    }
    public init(x:CGFloat,y:CGFloat){
        self.x = x
        self.y = y
    }
    
    public init(point:CGPoint){
        x = CGFloat(point.x)
        y = CGFloat(point.y)
    }
    
    public init(size:CGSize){
        x = CGFloat(size.width)
        y = CGFloat(size.height)
    }
    
    
    public func asPoint() -> CGPoint {
        return CGPoint(x:x,y:y)
    }
    
    public func asSize() -> CGSize {
        return CGSize(width: x, height: y)
    }
}


public extension Vector {
    public static func + (left: Math.Vector, right: Math.Vector) -> Math.Vector {
        return Math.Vector(x: left.x + right.x, y: left.y + right.y)
    }
    public static func - (left: Math.Vector, right: Math.Vector) -> Math.Vector {
        return Math.Vector(x: left.x - right.x, y: left.y - right.y)
    }
    public static func * (left: Math.Vector, right: CGFloat) -> Math.Vector {
        return Math.Vector(x: left.x*right, y: left.y*right)
    }
    public static func / (left: Math.Vector, right: CGFloat) -> Math.Vector {
        return Math.Vector(x: left.x/right, y: left.y/right)
    }
}
