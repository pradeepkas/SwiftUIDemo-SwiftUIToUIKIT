# SwiftUIDemo-SwiftUIToUIKIT
Swift UI to UI Kit interaction  

![Simulator Screen Recording - iPhone 14 Pro - 2023-07-31 at 14 04 44](https://github.com/pradeepkas/SwiftUIDemo-SwiftUIToUIKIT/assets/17314355/73dd3685-6519-4ca4-a42a-ffa5ba77112b)


Here we are usign **UIViewControllerRepresentable**

<img width="1073" alt="Screenshot 2023-07-31 at 2 10 25 PM" src="https://github.com/pradeepkas/SwiftUIDemo-SwiftUIToUIKIT/assets/17314355/17fda468-facd-4c73-a41a-29a00a155210">


``` Swift 
struct DetailsViewControllerFromUIKIT : UIViewControllerRepresentable {
    var userDetail: UserDetails // data model

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // to update view for later
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        let viewModel = ControllerViewModel(selectedDetail: userDetail)
        let vc = DetailsViewController(viewModel: viewModel)
        return vc
    }
}
```
