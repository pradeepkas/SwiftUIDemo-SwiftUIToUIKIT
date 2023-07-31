//
//  ViewModel.swift
//  MVVMSwiftUIDemo
//
//  Created by Pradeep kumar on 7/7/23.
//

import Foundation


final class InteractorClass: ObservableObject {
    
    @Published var list: [UserDetails] = []
    @Published var mainList: [UserDetails] = []

    func getList() {
        let data = [UserDetails(name: "A", address: "london"), UserDetails(name: "B", address: "Japan"), UserDetails(name: "c", address: "Singapore"), UserDetails(name: "D", address: "India")]
        
        list = data
        mainList = data
    }
    
    func updateFilterData(_ str: String) {
        if str.isEmpty {
            list = mainList
        }else {
            list = mainList.filter({$0.address.lowercased().contains(str.lowercased())})
        }
    }
    
}



class UserDetails: ObservableObject, Hashable {
    
    static func == (lhs: UserDetails, rhs: UserDetails) -> Bool {
        return lhs.address == rhs.address
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(name)
    }
    
    let name: String
    let address: String
        
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}
