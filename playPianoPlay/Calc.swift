//
//  Calc.swift
//  playPianoPlay
//
//  Created by Denis Andreev on 26.02.2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import Foundation

protocol Cal {
    func calc(_ name: String) -> String
}

extension Cal {
    func calc(_ name: [String]) -> String {
        return ""
    }
}
