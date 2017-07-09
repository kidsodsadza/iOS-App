//
//  VedioController.swift
//  MymultimediaApp
//
//  Created by ict on 10/12/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VedioController: UIViewController {
    
    var moviePlayer : AVPlayerViewController?
    
    func videoHasFinishedPlaying(notfication: Notification){
        print("Video finished playing")
        moviePlayer?.dismiss(animated: true, completion: nil)
    }
    
    func stopPlayingVideo(){
        if let _ = moviePlayer {
            NotificationCenter.default.removeObserver(self)
            moviePlayer?.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func palyMethod() {
        let  mainBundle = Bundle.main
        let  videoURL = mainBundle.url(forResource : "clip" , withExtension : "mp4")
        if let _ = moviePlayer{
            stopPlayingVideo()
        }
        
        moviePlayer = AVPlayerViewController()
        moviePlayer?.player = AVPlayer(url: videoURL!)
        
        if let player = moviePlayer{
            NotificationCenter.default.addObserver(self, selector: #selector(videoHasFinishedPlaying), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
            print("Sucessfully instatiated the Movie player")
            self.present(player,animated: true,completion: {
                () -> Void in
                player.player?.play()
            })
            }
        else{
            print("Failed to instantiate the movie player")
        }
    }
    
    @IBAction func backToMain(_ sender: AnyObject) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
