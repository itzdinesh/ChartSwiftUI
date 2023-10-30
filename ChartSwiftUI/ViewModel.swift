//
//  ViewModel.swift
//  ChartSwiftUI
//
//  Created by cyno on 23/08/23.
//

import Foundation
class ViewModel : ObservableObject{
   @Published var array = [SportModel]()
    
    
    func getnumber () {
        
        let array1 = SportModel(mount: "Football", value: "12")
        let array2 = SportModel(mount: "Cricket", value: "13")
        let array3 = SportModel(mount: "hokey", value: "9")
      
        self.array.append(array1)
        self.array.append(array2)
        self.array.append(array3)
        
    }
    
    
}
