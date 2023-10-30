//
//  ContentView.swift
//  ChartSwiftUI
//
//  Created by cyno on 23/08/23.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack(spacing : 30){
            List{
                Chart{
                    BarMark(x: .value("Mount", "jan/21"), y: .value("Value", "20"))
                    BarMark(x: .value("Mount", "feb/21"), y: .value("Value", "3"))
                    BarMark(x: .value("Mount", "march/21"), y: .value("Value", "2"))
                    BarMark(x: .value("Mount", "april/21"), y: .value("Value", "4"))
                }.frame(height : 200)
                
                
                
                
                Chart{
                    LineMark(x: .value("Mount", "jan/21"), y: .value("Value", "20"))
                    LineMark(x: .value("Mount", "feb/21"), y: .value("Value", "40"))
                    LineMark(x: .value("Mount", "march/21"), y: .value("Value", "40"))
                    LineMark(x: .value("Mount", "april/21"), y: .value("Value", "2"))
                }.frame(height: 200)
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
