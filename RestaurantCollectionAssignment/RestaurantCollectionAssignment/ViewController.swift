//
//  ViewController.swift
//  collectionAssignment2
//
//  Created by Takamiya Kengo on 2021/02/06.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    if let searchString = searchController.searchBar.text, !searchString.isEmpty {
      filteredItems = foodArray.filter({ $0.name.localizedCaseInsensitiveContains(searchString) })
    } else {
      filteredItems = foodArray
    }
    collectionview2.reloadData()
    dataSource.apply(filteredItemsSnapshot)
    
  }
  
  lazy var filteredItems: [Food] = self.foodArray
  
  let filter = ["Hot Drink","Iced Drink","Breakfast","Lunch","Soup","Snack","Wrap","Donuts","Expensive","Cheap"]
  
  let foodArray = [Food(name: "Hot Coffee", category: "Hot Drink", time: "5", price: "Cheap", image: UIImage(named: "hotcoffee.png")!,id: "0"),
                   Food(name: "Iced Coffee", category: "Iced Drink", time: "70", price: "Cheap",image: UIImage(named: "Iced-Coffee")!,id: "1"),
                   Food(name: "Tea", category: "Hot Drink", time: "0", price: "Cheap",image: UIImage(named: "tea")!,id: "2"),
                   Food(name: "Bagel", category: "Breakfast", time: "560", price: "Expensive",image: UIImage(named: "bagel")!,id: "3"),
                   Food(name: "Chili", category: "Lunch", time: "330", price: "Expensive",image: UIImage(named: "chili")!,id: "4"),
                   Food(name: "Chips", category: "Snack", time: "220", price: "Expensive",image: UIImage(named: "chips")!,id: "5"),
                   Food(name: "Cookies", category: "Snack", time: "210", price: "Expensive",image: UIImage(named: "cookies")!,id: "6"),
                   Food(name: "Donuts", category: "Donuts", time: "190", price: "Expensive",image: UIImage(named: "donuts")!,id: "7"),
                   Food(name: "Pasta", category: "Lunch", time: "490", price: "Expensive",image: UIImage(named: "pasta")!,id: "8"),
                   Food(name: "Smoothies", category: "Iced Drink", time: "180", price: "Cheap",image: UIImage(named: "smoothie")!,id: "9"),
                   Food(name: "Soup", category: "Soup", time: "120", price: "Cheap",image: UIImage(named: "soups")!,id: "10"),
                   Food(name: "Timbits", category: "Donuts", time: "70", price: "Cheap",image: UIImage(named: "timbits")!,id: "11"),
                   Food(name: "Chicken Wrap", category: "Wrap", time: "430", price: "Expensive",image: UIImage(named: "wrap1")!,id: "12"),
                   Food(name: "Steak Wrap", category: "Wrap", time: "430", price: "Expensive",image: UIImage(named: "wrap2")!,id: "13")
  ]
  
  var searchArray:[String] = []
  let searchController = UISearchController()
  lazy var filteredItems2 :[Int: [Food]] = [0:filteredItems]
  
  var dataSource: UICollectionViewDiffableDataSource<Int, Food>!
  
  var filteredItemsSnapshot: NSDiffableDataSourceSnapshot<Int, Food> {
    var snapshot = NSDiffableDataSourceSnapshot<Int, Food>()
    snapshot.appendSections([0])
    snapshot.appendItems(filteredItems)
    return snapshot
  }
  
  
  
  let collectionview1 : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let view = UICollectionView(frame: .zero,collectionViewLayout: layout)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.register(CollectionViewCell1.self, forCellWithReuseIdentifier: "cell")
    view.register(Cell1.self, forCellWithReuseIdentifier: "cell1")
    view.register(Cell2.self, forCellWithReuseIdentifier: "cell2")
    view.register(Cell3.self, forCellWithReuseIdentifier: "cell3")
    view.register(Cell4.self, forCellWithReuseIdentifier: "cell4")
    view.register(Cell5.self, forCellWithReuseIdentifier: "cell5")
    view.register(Cell6.self, forCellWithReuseIdentifier: "cell6")
    view.register(Cell7.self, forCellWithReuseIdentifier: "cell7")
    view.register(Cell8.self, forCellWithReuseIdentifier: "cell8")
    view.register(Cell9.self, forCellWithReuseIdentifier: "cell9")
    view.register(Cell10.self, forCellWithReuseIdentifier: "cell10")
    return view
  }()
  
  let collectionview2 : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    let view = UICollectionView(frame: .zero,collectionViewLayout: layout)
    //    let view = UICollectionView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    view.register(CollectionViewCell2.self, forCellWithReuseIdentifier: "cell")
    view.register(CollectionViewCell2Another.self, forCellWithReuseIdentifier: "cell2")
    return view
  }()
  
  private func createDataSource() {
    dataSource = UICollectionViewDiffableDataSource<Int, Food>(collectionView: collectionview2, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
      if self.layout == true {
        let cell = self.collectionview2.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell2
        cell.labelCategory.text = item.category
        cell.labelPrice.text = item.price
        cell.labelTime.text = item.time
        cell.image.image = item.image
        cell.labelName.text = item.name
        return cell
      } else {
        let cell = self.collectionview2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2Another
        cell.labelCategory.text = item.category
        cell.image.image = item.image
        cell.labelName.text = item.name
        return cell
      }
    })
    dataSource.apply(filteredItemsSnapshot)
  }
  
  private func generateLayout() -> UICollectionViewLayout {
    let spacing: CGFloat = 10
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: spacing, bottom: 0, trailing: spacing)
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(215))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
    group.contentInsets = NSDirectionalEdgeInsets(top: spacing, leading: 0, bottom: 0, trailing: 0)
    
    let section = NSCollectionLayoutSection(group: group)
    section.interGroupSpacing = spacing
    
    return UICollectionViewCompositionalLayout(section: section)
  }
  
  private func generateLayout2() -> UICollectionViewLayout {
    let spacing: CGFloat = 10
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
    
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: spacing, bottom: 0, trailing: spacing)
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(130))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
    group.contentInsets = NSDirectionalEdgeInsets(top: spacing, leading: 0, bottom: 0, trailing: 0)
    
    let section = NSCollectionLayoutSection(group: group)
    section.interGroupSpacing = spacing
    
    return UICollectionViewCompositionalLayout(section: section)
  }
  
  @objc func addTapped(){
    if layout == true {
      layout = false
      collectionview2.setCollectionViewLayout(generateLayout2(), animated: false)
      createDataSource()
      dataSource.apply(filteredItemsSnapshot)
    } else {
      layout = true
      collectionview2.setCollectionViewLayout(generateLayout(), animated: false)
      createDataSource()
      dataSource.apply(filteredItemsSnapshot)
    }
  }
  
  var layout = true
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    title = "Tim Hortons"
    navigationController?.navigationBar.tintColor = UIColor.red
    navigationController?.navigationBar.barTintColor = UIColor.red
    let add = UIBarButtonItem(title: "☕️", style: .plain, target: self, action: #selector(addTapped))
    navigationItem.leftBarButtonItems = [add]
    navigationController!.navigationBar.tintColor = UIColor.white
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    navigationItem.searchController = searchController
    searchController.searchResultsUpdater = self
    searchController.searchBar.barTintColor = .red
    searchController.obscuresBackgroundDuringPresentation = false
    collectionview2.setCollectionViewLayout(generateLayout(), animated: false)
    
    view.addSubview(collectionview1)
    collectionview1.delegate = self
    collectionview1.dataSource = self
    collectionview1.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
    collectionview1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
    collectionview1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    collectionview1.heightAnchor.constraint(equalToConstant: 40).isActive = true
    collectionview1.backgroundColor = .red
    
    view.addSubview(collectionview2)
    collectionview2.delegate = self
    collectionview2.dataSource = self
    collectionview2.topAnchor.constraint(equalTo: collectionview1.bottomAnchor, constant: 10).isActive = true
    collectionview2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
    collectionview2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
    collectionview2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    collectionview2.backgroundColor = .red
    createDataSource()
  }
  
}
extension ViewController : UICollectionViewDataSource,  UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //    if collectionView == collectionview1 {
    return CGSize(width: 90, height: 30)
    //    } else {
    //      return CGSize(width: view.frame.width/2-10, height: 230)
    //    }
  }
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == collectionview1 {
      return 10
    } else {
      return filteredItems.count
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView == collectionview1 {
      switch indexPath {
      case [0,0]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! Cell1
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,1]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! Cell2
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,2]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! Cell3
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,3]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! Cell4
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,4]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! Cell5
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,5]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! Cell6
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,6]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! Cell7
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,7]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! Cell8
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,8]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell9", for: indexPath) as! Cell9
        cell.label.text = filter[indexPath.row]
        return cell
      case [0,9]:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell10", for: indexPath) as! Cell10
        cell.label.text = filter[indexPath.row]
        return cell
      default:
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
        cell.label.text = filter[indexPath.row]
        return cell
      }
    } else {
      let cell = collectionview2.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell2
      cell.backgroundColor = .white
      cell.image.image = filteredItems[indexPath.row].image
      cell.labelName.text = filteredItems[indexPath.row].name
      cell.labelCategory.text = filteredItems[indexPath.row].category
      cell.labelPrice.text = filteredItems[indexPath.row].price
      cell.labelTime.text = filteredItems[indexPath.row].time
      return cell
    }
  }

  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    collectionView.deselectItem(at: indexPath, animated: true)
    if collectionView == collectionview1 {
      switch indexPath {
      case [0,0]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell1
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,1]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell2
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,2]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell3
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,3]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell4
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,4]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell5
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,5]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell6
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,6]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell7
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,7]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell8
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,8]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell9
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      case [0,9]:
        let cell = collectionview1.cellForItem(at: indexPath) as! Cell10
        if cell.label.backgroundColor == .white {
          cell.label.backgroundColor = .systemBlue
          cell.label.textColor = .white
          searchArray.append(cell.label.text!)
        } else {
          cell.label.backgroundColor = .white
          cell.label.textColor = .systemBlue
          searchArray = searchArray.filter({ !$0.localizedCaseInsensitiveContains(cell.label.text!) })
        }
      default:
        print("hello")
      }
    } else {
      let newViewController = DetailViewController()
      newViewController.image.image = filteredItems[indexPath.row].image
      newViewController.labelName.text = filteredItems[indexPath.row].name
      newViewController.labelCategory.text = filteredItems[indexPath.row].category
      newViewController.labelTime.text = filteredItems[indexPath.row].time
      //      self.navigationController?.pushViewController(newViewController, animated: true)
      self.present(newViewController, animated: true, completion: nil)
    }
    filteredItems = []
    if searchArray.count != 0 {
      var arrayId:[String] = []
      for i in 0...searchArray.count-1 {
        for j in 0...foodArray.count-1 {
          if foodArray[j].category.contains(searchArray[i]) || foodArray[j].price.contains(searchArray[i]) ||
              foodArray[j].time.contains(searchArray[i]) {
            arrayId.append(foodArray[j].id)
          }
        }
      }
      let orderedSet: NSOrderedSet = NSOrderedSet(array: arrayId)
      arrayId = orderedSet.array as! [String]
      
      for i in 0...arrayId.count-1 {
        for j in 0...foodArray.count-1 {
          if foodArray[j].id == arrayId[i] {
            filteredItems.append(foodArray[j])
          }
        }
      }
    } else {
      filteredItems = foodArray
    }
    print(searchArray)
    dataSource.apply(filteredItemsSnapshot)
    
  }
}

