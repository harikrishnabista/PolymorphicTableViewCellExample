//
//  VideoTableViewCell.swift
//  PolymorphicTableViewExample
//
//  Created by Hari Bista on 1/31/19.
//  Copyright © 2019 Hari Bista. All rights reserved.
//

import UIKit

class MediaItemTableViewCell : UITableViewCell {
    
    var data:MediaItem?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populate(data:MediaItem){
        self.data = data
    }
    
    static func getCellIdentifier(mediItem:MediaItem) -> String {
        if mediItem.type == .VIDEO {
            return "VideoTableViewCell"
        }else{
            return "GalleryTableViewCell"
        }
    }
}

class VideoTableViewCell: MediaItemTableViewCell {

    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func populate(data:MediaItem){
        self.data = data
        self.videoTitleLabel.text = data.title
    }
}


class GalleryTableViewCell: MediaItemTableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func populate(data:MediaItem){
        self.data = data
        self.titleLabel.text = data.title
    }
    
}
