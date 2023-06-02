//
//  NetworkLayer.swift
//  Covid 1 Test
//
//  Created by Yogesh Tekwani on 6/1/23.
//

import Foundation

func reqData(completionHandler: @escaping ([Details]?) -> () ){
    
    let url = URL(string: "https://api.covidtracking.com/v1/states/daily.json")
    let urlReq = URLRequest(url: url!)
    
    let task = URLSession.shared.dataTask(with: urlReq, completionHandler: { data, response, error in
        
        if error != nil {
            print(error?.localizedDescription)
            print(error)
            completionHandler(nil)
            return
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            completionHandler(nil)
            print(error)
            return
        }
        
        
        if let data = data {
            print("Inside Data")
            do{
                let decoder = JSONDecoder()
                let alld = try decoder.decode([Details].self, from: data)
                print(alld.count)
                completionHandler(alld)
            }catch{
                print(error)
                completionHandler(nil)
                return
            }
        }
        
        
    })
    
    task.resume()
}
