//
//  DetailViewController.swift
//  RestaurantCollectionAssignment
//
//  Created by Takamiya Kengo on 2021/02/08.
//

import UIKit

class DetailViewController: UIViewController {
  
  var image: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "Tacos")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  var image2: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "tim")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  var image3: UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "title")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  let labelName : UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = label.font.withSize(35)
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
    label.textColor = .red
    label.font = label.font.withSize(20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let labelCalories2 : UILabel = {
    let label = UILabel()
    label.text = "Calories : "
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(image)
    image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    image.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
    image.widthAnchor.constraint(equalToConstant: 200).isActive = true
    image.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    view.addSubview(image3)
    image3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    image3.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
    image3.widthAnchor.constraint(equalToConstant: 150).isActive = true
    image3.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    view.addSubview(labelName)
    labelName.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 30).isActive = true
    labelName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    
    view.addSubview(labelCategory)
    labelCategory.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 10).isActive = true
    labelCategory.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    
    view.addSubview(labelCalories2)
    labelCalories2.topAnchor.constraint(equalTo: labelCategory.bottomAnchor, constant: 10).isActive = true
    labelCalories2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
    
    view.addSubview(labelTime)
    labelTime.topAnchor.constraint(equalTo: labelCategory.bottomAnchor, constant: 8).isActive = true
    labelTime.leadingAnchor.constraint(equalTo: labelCalories2.trailingAnchor, constant: 5).isActive = true
    
    view.addSubview(image2)
    image2.topAnchor.constraint(equalTo: labelCalories2.bottomAnchor, constant: 8).isActive = true
    image2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    image2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
    image2.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
  }
  
  
}
