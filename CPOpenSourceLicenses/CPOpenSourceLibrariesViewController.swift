//
// Created by Chope on 2017. 4. 1..
// Copyright (c) 2017 ChopeIndustry. All rights reserved.
//

import UIKit


open class CPOpenSourceLibrariesViewController: UITableViewController {
    public var openSourceList = [CPOpenSource]() {
        didSet {
            tableView.reloadData()
        }
    }
    public var openSourceLicenseViewClass: CPOpenSourceLicenseView.Type = CPOpenSourceLicenseViewController.self

    private let cellIdentifier = "license"

    open override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(CPOpenSourceLibraryTableViewCell.self, forCellReuseIdentifier: cellIdentifier)

        title = "Opensource libraries"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    open override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return openSourceList.count
    }

    open override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
        let library = openSourceList[indexPath.row]

        cell.textLabel?.text = library.title
        cell.detailTextLabel?.text = library.license.title

        return cell
    }

    open override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let opensource = openSourceList[indexPath.row]

        var view = openSourceLicenseViewClass.init()
        view.openSource = opensource

        guard let vc = view as? UIViewController else {
            assertionFailure()
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}