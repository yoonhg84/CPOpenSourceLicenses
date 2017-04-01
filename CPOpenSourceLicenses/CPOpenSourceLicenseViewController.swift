//
// Created by Chope on 2017. 4. 1..
// Copyright (c) 2017 ChopeIndustry. All rights reserved.
//

import UIKit

public protocol CPOpenSourceLicenseView {
    var openSource: CPOpenSource? { get set }

    init()
}

public class CPOpenSourceLicenseViewController: UIViewController, CPOpenSourceLicenseView {
    public var openSource: CPOpenSource?

    private let textView = UITextView()

    public override func viewDidLoad() {
        super.viewDidLoad()

        textView.isEditable = false
        textView.isSelectable = true
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        automaticallyAdjustsScrollViewInsets = true

        view.addSubview(textView)

//        let backBarButtonItem = UIBarButtonItem(title: "뮤", style: .plain, target: nil, action: nil)
//        backBarButtonItem.setBackButtonTitlePositionAdjustment(UIOffset(horizontal: -100, vertical: -100), for: .default)
//        navigationItem.backBarButtonItem = backBarButtonItem
    }

    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        textView.frame = view.bounds
    }
                                                                                                   
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let openSource = openSource else {
            title = "Opensource License"
            textView.text = ""
            return
        }
        title = openSource.title
        textView.text = openSource.license.text
        textView.contentOffset = CGPoint()
    }

}
