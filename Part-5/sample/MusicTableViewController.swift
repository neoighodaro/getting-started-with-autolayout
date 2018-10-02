//
//  MusicTableViewController.swift
//  sample
//
//  Created by Neo Ighodaro on 02/10/2018.
//  Copyright © 2018 TapSharp. All rights reserved.
//

import UIKit

struct Music {
    var name: String
    var albumArt: UIImage?
}

class MusicTableViewController: UITableViewController {
    
    var songs: [Music] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        songs = [
            Music(name: "Hailee Steinfield - Capital letters", albumArt: UIImage(named: "album1")),
            Music(name: "Foster the people - Pumped up kicks", albumArt: UIImage(named: "album2")),
        ]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let song = songs[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "music", for: indexPath) as! MusicCell
        
        cell.song.text = song.name
        cell.albumArt.image = song.albumArt
        cell.playButton.setTitle("", for: .normal)
        cell.playButton.setImage(UIImage(named: "playbtn"), for: .normal)
        return cell
    }
}
