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



MIT License

Copyright (c) 2023 pradeep kumar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
