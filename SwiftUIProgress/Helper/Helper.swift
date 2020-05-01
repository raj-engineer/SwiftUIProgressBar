//
//  Helper.swift
//  SwiftUIProgress
//
//  Created by Rajesh Rajesh on 01/05/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import Foundation
import SwiftUI
public struct CustomButtonStyle: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width/2)
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10.0)
            .font(.title)
    }
}
