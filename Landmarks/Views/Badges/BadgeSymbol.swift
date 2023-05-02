//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 01/05/23.
//

import SwiftUI

struct BadgeSymbol: View {
    static let symbolColor = Color(red: 79.0/255, green: 79.0/255, blue: 191.0/255)
    var body: some View {
      
        GeometryReader{ g in
            Path{
                path in
                let width = min(g.size.width, g.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width * 0.5
                let topWidth = width * 0.226
                let topheight = height * 0.488
                
                path.addLines([
                    CGPoint(x:middle,y:spacing),
                    CGPoint(x:middle - topWidth,y: topheight - spacing),
                    CGPoint(x: middle, y: topheight/2 + spacing),
                    CGPoint(x:middle + topWidth, y: topheight - spacing)])
                
                path.move(to: CGPoint(x: middle, y: topheight / 2 + spacing * 3))
                path.addLines([
                    CGPoint(x:middle - topWidth,y: topheight + spacing),
                    CGPoint(x:spacing,y: height - spacing),
                    CGPoint(x:width - spacing,y: height - spacing),
                    CGPoint(x:middle + topWidth,y: topheight + spacing),
                    CGPoint(x:middle,y: topheight/2 + spacing * 3),
                ])
                
                
             
            }
            .fill(Self.symbolColor)
            
        }
    }
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
