//
//  DetailsView.swift
//  MVVMSwiftUIDemo
//
//  Created by Pradeep kumar on 7/7/23.
//

import SwiftUI

struct DetailsView: View {
    
    //var detail: UserDetails
    @EnvironmentObject var selectedDetails: UserDetails
        
    var body: some View {
        
        VStack(spacing: 20){
            Text("Name: \(selectedDetails.name)")
                .font(.headline)
            Text("Address: \(selectedDetails.address)")
                .font(.headline)
            
            Button("MainList") {
                //isActive = false
            }
            .disabled(true)
            
        }.padding()

    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let details = UserDetails(name: "Testing", address: "London")
        DetailsView()
            .environmentObject(details)
    }
}
