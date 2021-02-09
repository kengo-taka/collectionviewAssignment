//
//  CollectionViewCell.swift
//  RestaurantCollection
//
//  Created by Takamiya Kengo on 2021/01/28.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class CollectionViewCell2: UICollectionViewCell {
  
  var image: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "Tacos")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  let labelName : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = label.font.withSize(20)
    label.textColor = .darkGray
    return label
  }()
  
  let labelCategory : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .lightGray
    return label
  }()
  let labelTime : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let labelPrice : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    contentView.addSubview(image)
    image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
//    image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
//    image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    image.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    image.widthAnchor.constraint(equalToConstant: 130).isActive = true
    image.heightAnchor.constraint(equalToConstant: 130).isActive = true
    
    contentView.addSubview(labelName)
    labelName.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 5).isActive = true
    labelName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true

    contentView.addSubview(labelCategory)
    labelCategory.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 5).isActive = true
    labelCategory.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
//
//    contentView.addSubview(labelTime)
//    labelTime.topAnchor.constraint(equalTo: labelCategory.bottomAnchor, constant: 5).isActive = true
//    labelTime.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
//
//    contentView.addSubview(labelPrice)
//    labelPrice.topAnchor.constraint(equalTo: labelTime.bottomAnchor, constant: 5).isActive = true
//    labelPrice.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
    contentView.backgroundColor = .white
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


class CollectionViewCell2Another: UICollectionViewCell {
  
  var image: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "Tacos")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  let labelName : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = label.font.withSize(20)
    return label
  }()
  
  let labelCategory : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .lightGray
    return label
  }()
  let labelTime : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let labelPrice : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    contentView.addSubview(image)
    image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
    image.widthAnchor.constraint(equalToConstant: 100).isActive = true
    image.heightAnchor.constraint(equalToConstant: 100).isActive = true
   
    contentView.addSubview(labelName)
    labelName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 35).isActive = true
    labelName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 180).isActive = true
    contentView.addSubview(labelCategory)
    labelCategory.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 10).isActive = true
    labelCategory.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 180).isActive = true

    contentView.backgroundColor = .white
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class Cell1: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Mexican"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class Cell2: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell3: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell4: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell5: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell6: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell7: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell8: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
class Cell9: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

class Cell10: UICollectionViewCell {
  let label : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(label)
    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
    label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
    label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    label.text = "Hola"
    label.textAlignment = .center
    label.textColor = .systemBlue
    label.backgroundColor = .white
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

