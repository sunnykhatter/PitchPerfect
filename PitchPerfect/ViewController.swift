//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Lakshay Khatter on 8/22/16.
//  Copyright © 2016 Lakshay Khatter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopRecordingButton.enabled = false
    }


    @IBAction func recordAudio(sender: AnyObject) {
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
        
    }
    
    
    @IBAction func stopRecording(sender: AnyObject) {
        recordingLabel.text = "Recording Stopped"
        stopRecordingButton.enabled = false
        recordButton.enabled = true
        
    }
    
}

