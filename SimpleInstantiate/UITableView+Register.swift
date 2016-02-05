//
//  UITableView+Register.swift
//  nrhd
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

public extension UITableView {
    
    public func registerClass<T: UITableViewCell where T: ReusableView>(_: T.Type) {
        registerClass(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    public func registerNib<T: UITableViewCell where T: ReusableView, T: NibLoadableView>(_: T.Type) {
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)        
        registerNib(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell where T: ReusableView>(_: T.Type) -> T {
        guard let cell = dequeueReusableCellWithIdentifier(T.defaultReuseIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }

}
