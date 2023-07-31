//
//  Row.swift
//  MVVMSwiftUIDemo
//
//  Created by Pradeep kumar on 7/7/23.
//

import SwiftUI

struct Row: View {
    
    var ele: UserDetails
    
    var body: some View {
        HStack {
            Text("Name: \(ele.name)")
                .font(.headline)
            Spacer()
            Text("Address: \(ele.address)")
                .font(.headline)
        }.padding()
        
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(ele: UserDetails(name: "Testing", address: "London"))
    }
}
