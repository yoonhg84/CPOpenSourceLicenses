//
// Created by Chope on 2017. 4. 1..
// Copyright (c) 2017 ChopeIndustry. All rights reserved.
//

import UIKit

public protocol CPOpenSourceLicenseView {
    var openSource: CPOpenSource? { get set }

    init()
}

open class CPOpenSourceLicenseViewController: UIViewController, CPOpenSourceLicenseView {
    public var openSource: CPOpenSource?

    public let textView = UITextView()

    open override func viewDidLoad() {
        super.viewDidLoad()

        textView.isEditable = false
        textView.isSelectable = true
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        automaticallyAdjustsScrollViewInsets = true

        navigationController?.navigationBar.isTranslucent = false

        view.addSubview(textView)
    }

    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        textView.frame = view.bounds
    }
                                                                                                   
    open override func viewWillAppear(_ animated: Bool) {
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
