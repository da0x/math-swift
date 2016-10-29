//
//  Math.Position.swift
//  Whiteboard
//
//  Created by Daher Alfawares on 10/25/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


open class Position {
    var x : Float
    var y : Float
    
    public init(x:Float,y:Float){
        self.x = x
        self.y = y
    }
    
    public convenience init(){self.init(x:0,y:0)}
}

open class Transform {
    
    var x : Float
    var y : Float
    
    public init(x:Float,y:Float){
        self.x = x
        self.y = y
    }
    
    public convenience init(){self.init(x:0,y:0)}
}
    
