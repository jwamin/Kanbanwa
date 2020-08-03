//
//  Gradients.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

//other targets, swap implemnetatiop
#if os(macOS)
import Cocoa
typealias SystemColor = NSColor
#endif
import SwiftUI

struct Constants {
  
  struct Gradients {
    static var tealGradient = Gradient(colors: [Color(SystemColor.systemTeal),Color.blue])
    static var pinkGradient = Gradient(colors: [Color(SystemColor.magenta),Color.pink])
    static var greyGradient = Gradient(colors: [Color(SystemColor.systemGray),Color.gray])
    static var orangeGradient = Gradient(colors: [Color(SystemColor.systemOrange),Color.yellow])
    static var blue = LinearGradient(gradient: tealGradient, startPoint: .topLeading, endPoint: .bottomTrailing)
    static var pink = LinearGradient(gradient: pinkGradient, startPoint: .topLeading, endPoint: .bottomTrailing)
    static var grey = LinearGradient(gradient: greyGradient, startPoint: .topLeading, endPoint: .bottomTrailing)
    static var orange = LinearGradient(gradient: orangeGradient, startPoint: .topLeading, endPoint: .bottomTrailing)
  }
  
  
}
