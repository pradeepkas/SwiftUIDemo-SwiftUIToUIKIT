//
//  ContentView.swift
//  MVVMSwiftUIDemo
//
//  Created by Pradeep kumar on 7/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var interactorObj = InteractorClass()
    
    @State private var isActive: Bool = false
    @State private var searchStr: String = ""

    var body: some View {
        NavigationStack() {
            List {
                ForEach(interactorObj.list, id: \.self) { ele in
                    NavigationLink {
                        //DetailsView(detail: ele, isActive: $isActive)
                        DetailsViewControllerFromUIKIT(userDetail: ele)
                    } label: {
                        Row(ele: ele)
                    }
                }
            }
            .onAppear {
                interactorObj.getList()
            }
            .searchable(text: $searchStr, placement: SearchFieldPlacement.sidebar)
            .onChange(of: searchStr, perform: { newValue in
                interactorObj.updateFilterData(newValue)
            })
            .refreshable {
                searchStr = ""
                interactorObj.getList()
            }
            .navigationTitle("List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct DetailsViewControllerFromUIKIT : UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    
    var userDetail: UserDetails
    func makeUIViewController(context: Context) -> some UIViewController {
        let viewModel = ControllerViewModel.init(selectedDetail: userDetail)
        let vc = DetailsViewController(viewModel: viewModel)
        return vc
    }
    
    
}
