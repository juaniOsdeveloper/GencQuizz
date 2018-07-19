//
//  ViewController.swift
//  Quizz
//
//  Created by Juan Garcia on 15/6/18.
//  Copyright © 2018 Juan Garcia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // Esconder StatusBar
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    // Variables Globales
    @IBOutlet weak var tVt: UITextView!
    let userDef = UserDefaults ()
    let sonidos = ["correct", "incorrect"]
    var audioPlayer = AVAudioPlayer ()
    var Score: Int = 0
    var questionNumber: Int = 0
    let allQuestions = Questions()
    var answer: Bool = false
    // outlets¡
    @IBOutlet weak var imageWp: UIImageView!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Preparar Primera pregunta para mostrar
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.question
        questionLabel.adjustsFontSizeToFitWidth = true
        
        
        
    }
    // Acción "answerpressed"
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            answer = true
        }
        else if sender.tag == 2 {
            answer = false
        }
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
    }
    
    // Función AudioPlayer
    func playerr (sonido: String){
        
        let url = Bundle.main.url(forResource: sonido, withExtension: "wav")
        
        do { audioPlayer = try AVAudioPlayer(contentsOf: url!)}
        catch {print (error)}
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    // Funcion Actalizar interfaz de Usuario
    func updateUI() {
        scoreLabel.text = "Score:\(Score)"
       // progressLabel.text = "progress: \(questionNumber)/13"
        print (questionNumber)
        // Barra de progreso
        progressBar.frame.size.width = (view.frame.size.width/21) * CGFloat(questionNumber+1)
        
imageWp.image = allQuestions.list[questionNumber].image
        
    }
    
    // Función siguiente pregunta
    
    func nextQuestion() {
        if questionNumber <= 20 {
            questionLabel.text = allQuestions.list[questionNumber].question
            
            
            updateUI()
            
        }
      
            
       else  {print ("out of range!")}
    }
    
    
    // Función constatar respuesta
    func checkAnswer() {
        if questionNumber <= 20{
            if answer == allQuestions.list[questionNumber].answer {
                ProgressHUD.showSuccess("correct! :D")
                playerr(sonido: sonidos[0])
                print ("ok")
                Score += 1
             
                
            }
            else {print ("wrong")
                ProgressHUD.showError("Wrong! :C")
                playerr(sonido: sonidos[1])
                
    
            }
        }
        else {
            // Mostrar barra de navegación por si se da el caso en que el usuario quiere volver
            self.navigationController?.setNavigationBarHidden(false, animated: true)
           //  Hacer la barra de navegación translucida para mejorar la experiencia del usuario.
               self.navigationController?.navigationBar.isTranslucent = true
            
            // Mostrar alerta para volver a empezar.
            let alert = UIAlertController(title: "Well done!", message: "your score was \(Score)", preferredStyle: .alert)
         
            
            let action = UIAlertAction(title: "Try Again", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            
        }
    }
    
    // Función Restart
    func startOver() {
        // Poner los valores a 0 de nuevo para comenzar de nuevo.
        questionNumber = 0
        Score = 0
        nextQuestion()
    }
}

