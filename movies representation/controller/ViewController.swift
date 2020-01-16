//
//  ViewController.swift
//  movies representation
//
//  Created by Ahmed Saeed on 10/17/19.
//  Copyright © 2019 Ahmed Saeed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireImage
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var Tableview: UITableView!
  
  var movie : [movies_represntation]=[]
  let mocell = MoviesCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makerequest()
        
        Tableview.reloadData()
    }
    
    
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movie.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let mycell:MoviesCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! MoviesCell
    mycell.MoviesDescription.text = movie[indexPath.row].Description
    mycell.MoviesName.text = movie[indexPath.row].Name
    //mycell.poster.image = UIImage(named: movie[indexPath.row].photo)
    
    //with alamofire image
    Alamofire.request(movie[indexPath.row].photo).responseImage { response in
      
      if let image = response.result.value {
        
        mycell.poster.image = image
        
      }
    }
    
    return mycell
  }
  

  
  func makerequest(){
    Alamofire.request("https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&fbclid=IwAR1UYrCwv0watsy3GXWfSVtM75DGQbMVS2xDV52dgs1IYBGvX2hvlYIPWqI"
    )
      .responseJSON { response in
        switch response.result {
        case .failure(let error):
          print(error.localizedDescription)
          
        case .success( let value):
          
          let json = JSON(value)
          json["results"].array?.forEach({(movie) in
            let movie = movies_represntation(Name: movie["title"].stringValue, Description: movie["overview"].stringValue, photo:"https://image.tmdb.org/t/p/w500" + movie["poster_path"].stringValue)
            self.movie.append(movie)
            print(movie.photo)
            
            
            
            
          })
          self.Tableview.reloadData()
          
          
          
        }
    }
  }
}



