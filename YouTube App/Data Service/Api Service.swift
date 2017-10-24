//
//  Api Service.swift
//  YouTube App
//
//  Created by PoGo on 10/23/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class ApiService {
    
    static let sharedInstance = ApiService()
    let baseUrl = "https://s3-us-west-2.amazonaws.com/youtubeassets"
    
    func fetchVideos(completion: @escaping ([Video]) -> ()){
        fetchFeedForUrlString(urlString: "\(baseUrl)/home.json") { (videos) in
            completion(videos)
        }
    }
    
    func fetchTrendingFeed(completion: @escaping ([Video]) -> ()){
        fetchFeedForUrlString(urlString: "\(baseUrl)/trending.json") { (videos) in
            completion(videos)
        }
    }
    
    func fetchSubscriptionVideos(completion: @escaping ([Video]) -> ()){
        fetchFeedForUrlString(urlString: "\(baseUrl)/subscriptions.json") { (videos) in
            completion(videos)
        }
    }
    
    func fetchFeedForUrlString(urlString: String, completion: @escaping ([Video]) -> ()){
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil{
                print(error as Any)
                return
            }
            
            do{
                var videos = [Video]()
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
                for dictionary in json as! [[String: Any]]{
                    let video = Video()
                    video.title = dictionary["title"] as? String
                    video.thumbnailImageName = dictionary["thumbnail_image_name"] as? String
                    
                    let channelDictionary = dictionary["channel"] as! [String: Any]
                    
                    let channel = Channel()
                    channel.name = channelDictionary["name"] as? String
                    channel.profileImageName = channelDictionary["profile_image_name"] as? String
                    video.channel = channel
                    
                    videos.append(video)
                }
                DispatchQueue.main.async {
                    completion(videos)
                }
                
            }catch{
                print(error)
            }
            
            }.resume()
    }
}
