//
//  UICollectionView+Register.swift
//  SimpleInstantiate
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

public extension UICollectionView {

    public func registerClass<T: UICollectionViewCell>(_: T.Type) {
        self.register(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    public func registerNib<T: UICollectionViewCell>(_: T.Type) where T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        self.register(nib, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(_: T.Type, forIndexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: forIndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }

}
