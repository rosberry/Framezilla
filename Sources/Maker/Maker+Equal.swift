//
//  Copyright © 2020 Rosberry. All rights reserved.
//

import UIKit

extension Maker {

    /// Creates equal relations.
    ///
    /// - parameter view:   The view, against which sets relations.
    /// - parameter insets: The insets for setting relations with `view`. Default value: `UIEdgeInsets.zero`.
    ///
    /// - returns: `Maker` instance for chaining relations.

    @discardableResult public func equal(to view: UIView, insets: UIEdgeInsets = .zero) -> Maker {
        let view: ViewType = .view(view)
        return equal(to: view, insets: insets)
    }

    /// Creates equal relations.
    ///
    /// - parameter layer:   The layer, against which sets relations.
    /// - parameter insets: The insets for setting relations with `view`. Default value: `UIEdgeInsets.zero`.
    ///
    /// - returns: `Maker` instance for chaining relations.

    @discardableResult public func equal(to layer: CALayer, insets: UIEdgeInsets = .zero) -> Maker {
        let view: ViewType = .layer(layer)
        return equal(to: view, insets: insets)
    }

    private func equal(to view: ViewType, insets: UIEdgeInsets = .zero) -> Maker {
        let topView = RelationView<VerticalRelation>(view: view, relation: .top)
        let leftView = RelationView<HorizontalRelation>(view: view, relation: .left)
        let bottomView = RelationView<VerticalRelation>(view: view, relation: .bottom)
        let rightView = RelationView<HorizontalRelation>(view: view, relation: .right)

        return  top(to: topView, inset: insets.top)
                .left(to: leftView, inset: insets.left)
                .bottom(to: bottomView, inset: insets.bottom)
                .right(to: rightView, inset: insets.right)
    }
}