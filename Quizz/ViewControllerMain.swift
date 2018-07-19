//
//  ViewControllerMain.swift
//  Quizz
//
//  Created by Juan Garcia on 15/6/18.
//  Copyright © 2018 Juan Garcia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerMain: UIViewController {
    // Esconder Status Bar
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    // Variables Globales
    var audioPlayer = AVAudioPlayer ()
    var intro = "intro"
    var start = "start"

    override func viewDidLoad() {
        super.viewDidLoad()
     
    // Música de la intro
        playerr(sonido: intro)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Función reproductor de sonido
    func playerr (sonido: String){
        
        let url = Bundle.main.url(forResource: sonido, withExtension: "wav")
        
        do { audioPlayer = try AVAudioPlayer(contentsOf: url!)}
        catch {print (error)}
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
    // Funcion para hacer parar la música cuand salga de esta Vista.
    override func viewWillDisappear(_ animated: Bool) {
        audioPlayer.stop()
    }
    override func viewWillAppear(_ animated: Bool) {
        // Esonder navigation Bar
 self.navigationController?.setNavigationBarHidden(true, animated: animated)
        playerr(sonido: intro)
        audioPlayer.play()
    }
    @IBAction func StartAction(_ sender: Any) {
        // Sonido de "Start Game"
        playerr(sonido: start)
    }
    
    

}
