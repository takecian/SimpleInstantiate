//
//  NibLoadableView.swift
//  nrhd
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

public protocol NibLoadableView: class {
    static var nibName: String { get }
}

public extension NibLoadableView where Self: UIView {

    public static var nibName: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
    public static func createInstance<T: UIView where T: NibLoadableView>() -> T {
        return UINib(nibName: T.nibName, bundle: nil).instantiateWithOwner(self, options: nil)[0] as! T
    }

}

