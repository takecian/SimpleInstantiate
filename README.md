# SimpleInstantiate

SimpleInstantiate is pure Swift library which instantiates objects in simple way.

## Features

* Instantiate UITableViewCell without Cell Reuse Identifier
* Instantiate UICollectionViewCell without Cell Reuse Identifier
* Instantiate UIView from xib without specifying xib file name

# Install

```Podfile
pod 'SimpleInstantiate'
```

# Usage

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
