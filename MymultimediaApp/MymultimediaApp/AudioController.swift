//
//  AudioController.swift
//  MymultimediaApp
//
//  Created by ict on 10/12/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit
import AVFoundation

class AudioController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer?
    
    @IBOutlet weak var sliderVoluome: UISlider!
    @IBAction func pauseMethod(_ sender: AnyObject) {
        if audioPlayer!.isPlaying{
        audioPlayer!.pause()
        }
    }
    
    @IBAction func playMethod(_ sender: AnyObject) {
        if !audioPlayer!.isPlaying{
            audioPlayer!.play()
        }
    }
    
    @IBAction func stopMethod(_ sender: AnyObject) {
        audioPlayer!.stop()
        resetMethod()
    }
    
    @IBAction func volumeMethod(_ sender: AnyObject) {
        audioPlayer!.volume = sliderVoluome.value
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        resetMethod()
    }
    @IBAction func backToMain(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mySong : URL = URL (fileURLWithPath : Bundle.main.path (forResource: "tiger", ofType: "mp3")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf : mySong)
            
        }catch let error as NSError{
            print("Error : \(error)")
            audioPlayer = nil
            audioPlayer!.delegate = self
            audioPlayer!.prepareToPlay()
            audioPlayer!.volume = 0.3
            sliderVoluome.value = 0.3
        }
    
        // Do any additional setup after loading the view.
    }
    
    func resetMethod(){
        sliderVoluome.value = 0.3
        audioPlayer!.volume = 0.3
        audioPlayer!.currentTime = 0
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
