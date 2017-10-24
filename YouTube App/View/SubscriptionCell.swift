//
//  SubscriptionCell.swift
//  YouTube App
//
//  Created by PoGo on 10/23/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionVideos { (subscriptionvideos) in
            self.videos = subscriptionvideos
            self.collectionView.reloadData()
        }
    }
    
}
