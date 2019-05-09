//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlanetCell" //step 3: updated corresponding reuse ID for view cell

class PlanetsCollectionViewController: UICollectionViewController {

    //step 2: cleaned up boilerplate code and comments

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return planetController.planets.count //step 4: return the amount in the created array
    }
//THIS FUNCTION IS IMPORANT FOR THE CHALLENGE
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PlanetCollectionViewCell //step 5: cast the cell as PlanetCollectionVC (allows us to get customization to cell
    
        let planet = planetController.planets[indexPath.item]
        cell.nameLabel.text = planet.name
        cell.planetImageView.image = planet.image //step 6: customize the cell
        
        
    
        return cell
    }

    
    
    //MARK: -Properties
    
    let planetController = PlanetController() // step 1: create an instance of planetController

}

 //a way to return UIImage from something else
//guard let imageString = "Random"
//UIImage(named: imageString)

//let data =
//UIImage(data: Data)
