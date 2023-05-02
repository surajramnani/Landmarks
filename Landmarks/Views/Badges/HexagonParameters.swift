//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 30/04/23.
//

import Foundation

struct HexagonParameters {
    struct segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    static let adjustment: CGFloat = 0.085
    static let segments = [
        segment(
            line: CGPoint(x:0.60, y:0.05),
            curve: CGPoint(x:0.40, y:0.05),
            control: CGPoint(x:0.50, y:0.00)),
        segment(
            line: CGPoint(x:0.05, y:0.20 + adjustment),
            curve: CGPoint(x:0.00, y:0.30 + adjustment),
            control: CGPoint(x:0.00, y:0.25 + adjustment)),
        segment(
            line: CGPoint(x:0.00, y:0.70 - adjustment),
            curve: CGPoint(x:0.05, y:0.80 - adjustment),
            control: CGPoint(x:0.00, y:0.75 - adjustment)),
        segment(
            line: CGPoint(x:0.40, y:0.95),
            curve: CGPoint(x:0.60, y:0.95),
            control: CGPoint(x:0.50, y:1.00)),
        segment(
            line: CGPoint(x:0.95, y:0.80  - adjustment),
            curve: CGPoint(x:1.00, y:0.70 - adjustment),
            control: CGPoint(x:1.00, y:0.75 - adjustment)),
        segment(
            line: CGPoint(x:1.00, y:0.30 + adjustment),
            curve: CGPoint(x:0.95, y:0.20 + adjustment),
            control: CGPoint(x:1.00, y:0.25 + adjustment)),
    ]

}
