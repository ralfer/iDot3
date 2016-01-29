//
//  Stimulus.swift
//  iDot3x
//
//  Created by Andrey Chetverikov on 26/01/16.
//  Copyright © 2016 Andrey Chetverikov. All rights reserved.
//

import SpriteKit

class Stimulus: SKSpriteNode {
    var col: Double
    var row: Double
    var posX, posY: CGFloat
    var type: String
    init(col: Double, row: Double, imgName:String, type: String, xOffset:Double, yOffset: Double, colWidth: Double, rowHeight: Double, randXFactor: Double, randYFactor: Double ) {
        let texture = SKTexture(imageNamed: imgName)
        self.col = col
        self.row = row

        self.posX = CGFloat(xOffset+((col+0.5)*colWidth)+(randXFactor/2)-(drand48() * randXFactor))
        self.posY = CGFloat(yOffset+((row+0.5)*rowHeight)+(randYFactor/2)-(drand48() * randYFactor))
        self.type = type
        super.init(texture: texture, color: UIColor.clearColor(), size: CGSizeMake(50, 50))
        
//        print("pos: \(CGFloat(posX), \(CGFloat(posY))")
        self.position = CGPointMake(posX, posY)
        self.anchorPoint = CGPointMake(0.5, 0.5)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var description: String {
        return "type:\(type) square:(\(col),\(row)), pos:(\(posX),\(posY))"
    }


}
