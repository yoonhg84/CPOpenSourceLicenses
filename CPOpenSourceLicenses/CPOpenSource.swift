//
// Created by Chope on 2017. 4. 1..
// Copyright (c) 2017 ChopeIndustry. All rights reserved.
//

import Foundation

public struct CPOpenSource {
    public let title: String
    public let license: CPLicense

    public init(title: String, license: CPLicense) {
        self.title = title
        self.license = license
    }
}
