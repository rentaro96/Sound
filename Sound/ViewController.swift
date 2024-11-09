//
//  ViewController.swift
//  Sound
//
//  Created by 鈴木廉太郎 on 2024/10/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    @IBOutlet var pianoButton: UIButton!
    
    @IBOutlet var guitarButton: UIButton!
    
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"drumSound")!.data)
    
    let pianoSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"pianoSound")!.data)
    
    let guitarSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"guitarSound")!.data) 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named:"playDrum"),for:.normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchDownPianoButton(){
        
        pianoButton.setImage(UIImage(named: "playPiano"),for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
        
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchDownGuitarButton(){
        
        guitarButton.setImage(UIImage(named: "playGuitar"),for: .normal)
        
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
        
        
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
        
    }
    
    @IBAction func touchUpPianoButton(){
        pianoButton.setImage(UIImage(named:"piano"),for: .normal)
    }
    
    
    
    
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named:"drum"),for: .normal)
        
        
    }
    
    @IBAction func touchUpGuitarButton(){
        guitarButton.setImage(UIImage(named:"guitar"),for: .normal)
    }
    }
    
    





