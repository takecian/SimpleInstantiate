# SimpleInstantiate

SimpleInstantiate is pure Swift library which instantiates objects in simple way.

## Features

* Instantiate custom UITableViewCell without Cell Reuse Identifier
* Instantiate custom UICollectionViewCell without Cell Reuse Identifier
* Instantiate custom UIView from xib without specifying xib file name

# Install

## Cocoapods
```Podfile
pod 'SimpleInstantiate'
```

## Carthage

```
github "takecian/SimpleInstantiate" "0.1.1"
```

## Directly

Drag & drop files in SimpleInstantiate directory into your project.

# Usage

## Instantiate custom UIView from xib

```
class CustomView: UIView, NibLoadableView {
}

let view = InstanceFactory.createInstance(CustomView.self)

```

Note: Xib file name should be same as class name.(e.g. 'CustomView.swift' and 'CustomView.xib')

## UITableView without xib

```
tableView.registerClass(CustomTableViewCell.self)

let cell = tableView.dequeueReusableCell(CustomTableViewCell.self)
```

## UITableView with xib

```
class CustomTableViewCell: UITableViewCell, NibLoadableView {
}

tableView.registerNib(CustomTableViewCell.self)

let cell = tableView.dequeueReusableCell(CustomTableViewCell.self)
```
