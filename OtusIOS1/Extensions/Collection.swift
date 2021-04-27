//
//  Collection.swift
//  OtusIOS1
//
//  Created by Alexey Bolvonovich on 25.03.21.
//

import Foundation

extension RandomAccessCollection where Self.Element: Identifiable {

    func isLast(_ item: Element) -> Bool {
        guard isEmpty == false else {
            return false
        }

        guard let itemIndex = lastIndex(where: { AnyHashable($0.id) == AnyHashable(item.id) }) else {
            return false
        }
        return distance(from: itemIndex, to: endIndex) == 1
    }
}