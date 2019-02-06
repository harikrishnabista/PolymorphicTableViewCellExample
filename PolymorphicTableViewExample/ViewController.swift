//
//  ViewController.swift
//  PolymorphicTableViewExample
//
//  Created by Hari Bista on 1/31/19.
//  Copyright © 2019 Hari Bista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data:[MediaItem] = []

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoMediaItem = MediaItem(title: "Video", type: .VIDEO)
        let galleryMediaItem = MediaItem(title: "Gallery", type: .GALLERY)
        
        self.data.append(videoMediaItem)
        self.data.append(galleryMediaItem)
        
        self.tableView.dataSource = self
        
        self.tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let item = self.data[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MediaItemTableViewCell.getCellIdentifier(mediItem: item), for: indexPath) as! MediaItemTableViewCell

        cell.populate(data: item)
        
        return cell
    }
}

