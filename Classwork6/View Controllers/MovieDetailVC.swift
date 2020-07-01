//
//  FilmVC.swift
//  Classwork6
//
//  Created by Bader Alawadh on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {

    
    var movie: Movie? = nil
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatedLabel: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
        setMovieDetails()
    }
    
    func setMovieDetails() {
        navigationItem.title = movie?.movieName
        movieImg.image = UIImage(named: movie!.movieName)
        movieRatingLabel.text = String(movie!.rating)
        movieRatedLabel.text = String(movie!.pgRating)
        movieReleaseDate.text = String(movie!.movieReleaseDate)
        actorImg1.image = UIImage(named: movie!.actors[0])
        actorName1.text = movie?.actors[0]
        actorImg2.image = UIImage(named: movie!.actors[1])
        actorName2.text = movie?.actors[1]
        actorImg3.image = UIImage(named: movie!.actors[2])
        actorName3.text = movie?.actors[2]
    }
    
    func configureView(){
        movieRatingLabel.layer.cornerRadius = 20
        movieRatedLabel.layer.cornerRadius = 20
        movieReleaseDate.layer.cornerRadius = 20
        actorImg1.layer.cornerRadius = 20
        actorImg2.layer.cornerRadius = 20
        actorImg3.layer.cornerRadius = 20
        
        
        movieRatingLabel.layer.masksToBounds = true
        movieRatedLabel.layer.masksToBounds = true
        movieReleaseDate.layer.masksToBounds = true
        actorImg1.layer.masksToBounds = true
        actorImg2.layer.masksToBounds = true
        actorImg3.layer.masksToBounds = true
    }
    
}
