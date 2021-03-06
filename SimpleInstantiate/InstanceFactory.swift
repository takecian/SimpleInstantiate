//
//  InstanceFactory.swift
//  SimpleInstantiate
//
//  Created by Fujiki Takeshi on 2/5/16.
//  Copyright © 2016 takecian. All rights reserved.
//

import UIKit

public class InstanceFactory: NSObject {

    public static func createInstance<T: UIView>(_: T.Type) -> T where T: NibLoadableView {
        return UINib(nibName: T.nibName, bundle: nil).instantiate(withOwner: self, options: nil)[0] as! T
    }
    
}
