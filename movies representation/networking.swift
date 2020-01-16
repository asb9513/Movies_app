//
//  networking.swift
//  movies representation
//
//  Created by Ahmed Saeed on 10/17/19.
//  Copyright © 2019 Ahmed Saeed. All rights reserved.
//

import Foundation
import  UIKit
import Alamofire
import SwiftyJSON

class NetworkingServir {


    /*func getmovie() {

        Alamofire.request("https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&fbclid=IwAR1UYrCwv0watsy3GXWfSVtM75DGQbMVS2xDV52dgs1IYBGvX2hvlYIPWqI"
).responseJSON { response in

                switch response.result
                {
                case .failure(let error):

                    print(error)

                case .success(let valu):
                 let json = JSON(valu)
                 let results = json["results"].array
                 var mov = [movies_represntation]()

                 for data in results! {
                    guard let data = data.dictionary else  {return}
                    let movies = movies_represntation()
                    movies.Name = data["title"] as? String ?? "nothing "
                    movies.Description = data["overview"] as? String ?? " nothing"
                   mov.append(movies)
                    }



                    }






                    }

       }

     */

       }



    



