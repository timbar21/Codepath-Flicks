//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Tim Barnard on 2/14/16.
//  Copyright © 2016 Tim Barnard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    
    var movie: NSDictionary!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"]
        overviewLabel.text = overview as? String
        print(movie)
        
        overviewLabel.sizeToFit()
        
        let baseUrl="https://image.tmdb.org/t/p/w342"

        if let posterPath = movie["poster_path"] as? String
        {
            let imageUrl = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWithURL(imageUrl!)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation*/
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    
        //let movie = movies![indexPath.row]
//        
//
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
//    }
//    
//
}
//