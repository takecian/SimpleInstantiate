# SimpleInstantiate

SimpleInstantiate is pure Swift library which instantiates objects in simple way.

## Features

* Instantiate UITableViewCell without Cell Reuse Identifier
* Instantiate UICollectionViewCell without Cell Reuse Identifier
* Instantiate UIView from xib without specifying xib file name


# Install

## Cocoapods
```Podfile
pod 'SimpleInstantiate'
```

## Directly

Drag & drop files in SimpleInstantiate directory into your project.

# Usage

## Instantiate Custom UIView from xib

```
class CustomView: UIView, NibLoadableView {
}

let view = SimpleInstantiate.createInsntance(CustomView.self)

```

Note: Xib file name should be same as class name.(e.g. 'CustomView.swift' and 'CustomView.xib')

## UITableView without xib

```
tableView.registerClass(CustomTableViewCell.self)

let cell = tableView.dequeueReusableCell(CustomTableViewCell.self)

```

## UITableView with xib

```
import SimpleInstantiate
class CustomTableViewCell: UITableViewCell, NibLoadableView {
}

tableView.registerNib(CustomTableViewCell.self)

let cell = tableView.dequeueReusableCell(CustomTableViewCell.self)
```
