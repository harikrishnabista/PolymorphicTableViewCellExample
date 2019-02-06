//
//  MediaItem.swift
//  PolymorphicTableViewExample
//
//  Created by Hari Bista on 1/31/19.
//  Copyright © 2019 Hari Bista. All rights reserved.
//

import UIKit

enum MediaItemType : String {
    case VIDEO = "VIDEO"
    case GALLERY = "GALLERY"
}

class MediaItem {
    var title: String
    var type: MediaItemType
    
    init(title:String, type:MediaItemType) {
        self.title = title
        self.type = type
    }
}

