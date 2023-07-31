//
//  DetailsViewController.swift
//  MVVMSwiftUIDemo
//
//  Created by Pradeep kumar on 9/7/23.
//

import UIKit
import SwiftUI

class DetailsViewController: UIViewController {

    var viewModel: ControllerViewModel
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!

    init(viewModel: ControllerViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsViewController", bundle: nil)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupData(viewModel: viewModel)
    }
    
    
    func setupData(viewModel: ControllerViewModel) {
        nameLbl.text = viewModel.selectedDetail.name
        addressLbl.text = viewModel.selectedDetail.address
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        print("btnClicked")
        sendToSwiftUI()
    }
    
    
    private func sendToSwiftUI() {
        let viewModel = viewModel.selectedDetail
        let vc = UIHostingController(rootView: DetailsView().environmentObject(viewModel))
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    




}
