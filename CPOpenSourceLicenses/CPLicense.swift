//
// Created by Chope on 2017. 4. 1..
// Copyright (c) 2017 ChopeIndustry. All rights reserved.
//

import Foundation

public enum CPLicense {
    case gnuAGPLv3
    case gnuGPLv3(project: String?, year: String?, fullname: String?, nameOfAuthor: String?)
    case gnuLGPLv3
    case mozillaPublicLicense2
    case apacheLicense2
    case mit(year: String?, fullname: String?)
    case theUnlicense
    case custom(title: String, text: String)
}

public extension CPLicense {
    public var title: String {
        switch self {
        case .gnuAGPLv3:
            return "GNU Affero General Public License v3.0"
        case .gnuGPLv3:
            return "GNU General Public License v3.0"
        case .gnuLGPLv3:
            return "GNU Lesser General Public License v3.0"
        case .mozillaPublicLicense2:
            return "Mozilla Public License 2.0"
        case .apacheLicense2:
            return "Apache License 2.0"
        case .mit:
            return "MIT"
        case .theUnlicense:
            return "The Unlicense"
        case .custom(let title, _):
            return title
        }
    }

    public var text: String {
        guard let rawText = rawText else { return "" }

        switch self {
        case .gnuGPLv3(let project, let year, let fullname, let nameOfAuthor):
            var result = rawText
            [
                    "{year}": year,
                    "{fullname}": fullname,
                    "{name of author}": nameOfAuthor,
                    "{project}": project
            ].forEach { element in
                guard let text = element.1 else { return }
                result = result.replacingOccurrences(of: element.0, with: text)
            }
            return result
        case .mit(let year, let fullname):
            var result = rawText
            [
                    "[year]": year,
                    "[fullname]": fullname,
            ].forEach { element in
                guard let text = element.1 else { return }
                result = result.replacingOccurrences(of: element.0, with: text)
            }
            return result
        case .custom(_, let text):
            return text
        default:
            return rawText
        }
    }

    private var rawText: String? {
        guard let path = Bundle.current.path(forResource: filename, ofType: "txt") else { return nil }
        return try? String(contentsOfFile: path)
    }
    
    private var filename: String? {
        switch self {
        case .gnuAGPLv3:
            return "GNUAfferoGeneralPublicLicenseV3.0"
        case .gnuGPLv3:
            return "GNUGeneralPublicLicenseV3.0"
        case .gnuLGPLv3:
            return "GNULesserGeneralPublicLicenseV3.0"
        case .mozillaPublicLicense2:
            return "MozillaPublicLicense2.0"
        case .apacheLicense2:
            return "ApacheLicense2.0"
        case .mit:
            return "MIT"
        case .theUnlicense:
            return "TheUnlicense"
        case .custom:
            return nil
        }
    }
}

private class CPLicenseBundle { }

private extension Bundle {
    static var current = Bundle(for: CPLicenseBundle.self)
}

private extension String {
    func replacing(text: String, to: String) {

    }
}