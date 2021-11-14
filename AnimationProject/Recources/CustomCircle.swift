//
//  CustomCircle.swift
//  AnimationProject
//
//  Created by Mikhail Pushkarev on 14.11.2021.
//

import SwiftUI

struct CustomCircle: Shape {
    public func path(in rect: CGRect) -> Path {
        let radius = min(rect.width, rect.height) / 2
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        return Path(){path in
            if rect.width > rect.height{
                path.move(to: CGPoint(x: center.x, y: 0))
                let startAngle = Angle(degrees: 270)
                path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle:  startAngle + Angle(degrees: 360), clockwise: false)
            } else {
                path.move(to: CGPoint(x: 0, y: center.y))
                let startAngle = Angle(degrees: 0)
                path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle:  startAngle + Angle(degrees: 360), clockwise: false)
            }
            path.closeSubpath()
        }
    }
}
