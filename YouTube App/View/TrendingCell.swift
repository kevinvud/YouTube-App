//
//  TrendingCell.swift
//  YouTube App
//
//  Created by PoGo on 10/23/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    override func fetchVideos() {
        
        ApiService.sharedInstance.fetchTrendingFeed { (videosFetchFromApi) in
            self.videos = videosFetchFromApi
            self.collectionView.reloadData()
        }
    }
}
