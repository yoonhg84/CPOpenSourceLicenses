//
// Created by Chope on 2017. 4. 1..
// Copyright (c) 2017 ChopeIndustry. All rights reserved.
//

import UIKit

public class CPOpenSourceLibraryTableViewCell: UITableViewCell {
    public static let cellIdentifier = "license"

    public required override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)

        textLabel?.textColor = UIColor(red:0.31, green:0.33, blue:0.34, alpha:1.00)
        textLabel?.font = UIFont.systemFont(ofSize: 20)
        detailTextLabel?.textColor = UIColor(red:0.59, green:0.60, blue:0.61, alpha:1.00)
        detailTextLabel?.font = UIFont.systemFont(ofSize: 12)
        accessoryType = .disclosureIndicator
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
