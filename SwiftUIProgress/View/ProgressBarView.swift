//
//  ProgressBarView.swift
//  SwiftUIProgress
//
//  Created by Rajesh Rajesh on 01/05/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var value : Int
    var body: some View {
        VStack(alignment: .trailing, spacing: 10){
            Text("Progress \(percentage(value: value))")
            ZStack(alignment: .leading){
        Capsule().frame(width: UIScreen.main.bounds.width-20).foregroundColor(Color.gray)
        
                Capsule().frame(width: (UIScreen.main.bounds.width-20)*CGFloat(value)/CGFloat(ProgressBarValue.max)).foregroundColor(Color.blue).animation(.linear)
            }.frame( height: 20)
        }
    }
    func percentage(value : Int)->String{
        let value = Double(value)
        let v = (100.0/Double(ProgressBarValue.max))*value
        let intValue = Int(ceil(v))
        return "\(intValue) %"
        
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(value: .constant(2))
    }
}
