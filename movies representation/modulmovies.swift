//
//  modulmovies.swift
//  movies representation
//
//  Created by Ahmed Saeed on 10/17/19.
//  Copyright © 2019 Ahmed Saeed. All rights reserved.
//

import Foundation
import UIKit
class movies {
            func getinfo(dictionary:[String:Any]){
            for movie in results! {
            let name = movie["title"]
            let desc = movie["overview"]
            self.Name = name
            self.Description = desc
        }
    }




}
