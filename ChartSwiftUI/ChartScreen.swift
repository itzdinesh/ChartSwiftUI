//
//  ChartScreen.swift
//  ChartSwiftUI
//
//  Created by cyno on 23/08/23.
//

import SwiftUI
import Charts
struct ChartScreen: View {
    @StateObject var vm : ViewModel = ViewModel()
    var body: some View {
        VStack{
            List{
                Chart{
                    ForEach(vm.array , id: \.self) { data in
                        
                        LineMark(x:
                                .value("data.mount", data.mount)
                                 ,
                                 y:
                                .value ("data.mount" , data.value ))
                        
                    }
                }.frame(height : 100)
                
            }
        }.onAppear {
            vm.getnumber()
        }
    }
}

struct ChartScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChartScreen()
    }
}
