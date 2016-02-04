//
//  UICollectionView+Register.swift
//  SimpleInstantiate
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

public extension UICollectionView {

    public func registerClass<T: UICollectionViewCell where T: ReusableView>(_: T.Type) {
        registerClass(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    public func register<T: UICollectionViewCell where T: ReusableView, T: NibLoadableView>(_: T.Type) {
        let bundle = NSBundle(forClass: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        registerNib(nib, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell where T: ReusableView>(_: T.Type, forIndexPath: NSIndexPath) -> T {
        guard let cell = dequeueReusableCellWithReuseIdentifier(T.defaultReuseIdentifier, forIndexPath: forIndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }

}
