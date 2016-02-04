//
//  ReusableView .swift
//  nrhd
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

public protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

public extension ReusableView where Self: UIView {
    public static var defaultReuseIdentifier: String {
        return NSStringFromClass(self)
    }
}

extension UICollectionViewCell: ReusableView {
}

extension UITableViewCell: ReusableView {
}
