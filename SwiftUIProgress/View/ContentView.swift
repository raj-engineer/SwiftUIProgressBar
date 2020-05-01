//
//  ContentView.swift
//  SwiftUIProgress
//
//  Created by Rajesh Rajesh on 01/05/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var progressValue : Int =  0
   @State var timer : Timer? = nil
    var body: some View {
        NavigationView{
        VStack(spacing :20){
            ProgressBarView(value: $progressValue)
            Spacer()
        Button("Start"){
            self.startProgress()
        }.buttonStyle(CustomButtonStyle())
        
        Button("Reset"){
            self.resetProgress()
            
               }.buttonStyle(CustomButtonStyle())
            }.navigationBarTitle("ProgressBar")
        }
    }
    
    func startProgress(){
        resetProgress()
        self.timer = Timer.scheduledTimer(withTimeInterval: ProgressBarValue.intervalTime, repeats: true, block: { (Timer) in
            self.progressValue = self.progressValue+1
            
            if self.progressValue >= ProgressBarValue.max{
                Timer.invalidate()
            }
        })
    }
    
    func resetProgress(){
        self.progressValue = 0
       timer?.invalidate()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
