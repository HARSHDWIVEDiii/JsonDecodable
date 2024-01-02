//
//  ViewController.swift
//  JsonDecodable
//
//  Created by Mac on 29/12/23.
//

import UIKit

class ViewController: UIViewController {
    var posts : [Post] = []
    var jsonDecoder : JSONDecoder?
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonDecodableProctocol()
        
    }
//
    func jsonDecodableProctocol(){
        var url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        var urlRequsest = URLRequest(url: url!)
        var dataTask = URLSession.shared.dataTask(with: urlRequsest) { data, response, error in
            self.jsonDecoder = JSONDecoder()
            self.posts = try! self.jsonDecoder!.decode([Post].self, from: data!)
            print(self.posts)
        }
        dataTask.resume()
    }
}

