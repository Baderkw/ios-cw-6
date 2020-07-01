//
//  MainVC.swift
//  Classwork6
//
//  Created by Bader Alawadh on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesMasterVC: UIViewController {
    
    var selectedMovie = Movie(movieName: "", movieReleaseDate: 2020, actors: [], rating: 9.0, pgRating: "")
    
    @IBOutlet weak var marvel0: UIButton!
    @IBOutlet weak var marvel1: UIButton!
    @IBOutlet weak var marvel2: UIButton!
    @IBOutlet weak var marvel3: UIButton!
    @IBOutlet weak var marvel4: UIButton!
    @IBOutlet weak var marvel5: UIButton!
    var marvelButtons = [UIButton]()
    
    @IBOutlet weak var dc0: UIButton!
    @IBOutlet weak var dc1: UIButton!
    @IBOutlet weak var dc2: UIButton!
    @IBOutlet weak var dc3: UIButton!
    @IBOutlet weak var dc4: UIButton!
    @IBOutlet weak var dc5: UIButton!
    var DCButtons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        marvelButtons = [marvel0, marvel1, marvel2, marvel3, marvel4,marvel5]
        DCButtons = [dc0, dc1, dc2, dc3, dc4, dc5]
        setMarvelImages()
        setDCImages()
    }
    
    func setMarvelImages() {
        var i = 0
        for button in marvelButtons {
            button.setBackgroundImage(UIImage(named: MarvelMovieData[i].movieName), for: .normal)
            button.layer.cornerRadius = 15
            button.layer.masksToBounds = true
            i += 1
        }
    }
    
    func setDCImages() {
        var i = 0
        for button in DCButtons {
            button.setBackgroundImage(UIImage(named: DCMovieData[i].movieName), for: .normal)
            button.layer.cornerRadius = 15
            button.layer.masksToBounds = true
            i += 1
        }
        
    }
    
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "MovieSegue", sender: sender)
    }
    
    
    @IBAction func DCBtns(_ sender: UIButton) {
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "MovieSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? MovieDetailVC else {fatalError()}
        destination.movie = selectedMovie
        
    }
    

}
