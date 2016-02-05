# SimpleInstantiate

SimpleInstantiate is pure Swift library which instantiates objects in simple way.

## Features

* Instantiate UITableViewCell without Cell Reuse Identifier
* Instantiate UICollectionViewCell without Cell Reuse Identifier
* You don't need to prepare Cell Reuse Identifier fo

# Install

```Podfile
pod 'SimpleInstantiate'
```

# Useage

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

tableView.register(CustomTableViewCell.self)

let cell = tableView.dequeueReusableCell(CustomTableViewCell.self)
```
