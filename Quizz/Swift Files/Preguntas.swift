//
//  QuestionBank.swift
//  Quizz
//
//  Created by Juan Garcia on 15/6/18.
//  Copyright © 2018 Juan Garcia. All rights reserved.
//

import Foundation


class Questions {
    var list = [Question] ()
    
    init () {
      
        
        list.append(Question(text: "Valentine's day is currently banned in Saudi Arabia.", correctAnswer: true, image: #imageLiteral(resourceName: "valentin") ))
        

        list.append(Question(text: "Slug's blood color is green.", correctAnswer: true, image: #imageLiteral(resourceName: "babosa")))
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true, image: #imageLiteral(resourceName: "hueso")))
        
        list.append(Question(text: "The surface area of two human lungs is approximately 70 m2. ", correctAnswer: true, image: #imageLiteral(resourceName: "pulmon")))
        
        list.append(Question(text: "There is 50 states in USA", correctAnswer: true, image: #imageLiteral(resourceName: "eeuu")))
        
        list.append(Question(text: "You can find The Big ben  in London (UK)", correctAnswer: true, image: #imageLiteral(resourceName: "london")))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true, image: #imageLiteral(resourceName: "oceano")))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false, image: #imageLiteral(resourceName: "vaca")))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true, image: #imageLiteral(resourceName: "google")))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels by the Elephant.", correctAnswer: false, image: #imageLiteral(resourceName: "elefante")))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false, image: #imageLiteral(resourceName: "papel")))
        
        list.append(Question(text: "Chocolate affects a dog's heart and can be lethal", correctAnswer: true, image: #imageLiteral(resourceName: "chocolate")))
        
        list.append(Question(text: "The capital of Island is Reikiavik", correctAnswer: true, image: #imageLiteral(resourceName: "islandia")))
        
        list.append(Question(text: "America was discovered in 1492", correctAnswer: true, image: #imageLiteral(resourceName: "amer")))
        
        list.append(Question(text: "The european Team Milan is the one with more champions league titles", correctAnswer: false, image: #imageLiteral(resourceName: "milan")))
        
        list.append(Question(text: "Bill Gates is the richest man nowadays", correctAnswer: false, image: #imageLiteral(resourceName: "money")))
        
        list.append(Question(text: "Hip Hop started in early 80´s in New York", correctAnswer: true, image: #imageLiteral(resourceName: "hh")))
        
        list.append(Question(text: "The book *Don Quijote de la Mancha*, was writen by Miguel de Cervantes in 1615" , correctAnswer: true, image: #imageLiteral(resourceName: "dq")))
        
        list.append(Question(text: "The longest riven in the world is Amazonas", correctAnswer: true, image: #imageLiteral(resourceName: "amazonas")))
        
        list.append(Question(text: "The solar system has 9 planets", correctAnswer: false, image: #imageLiteral(resourceName: "ssolar")))
        
        list.append(Question(text: "This is the best app ever", correctAnswer: true, image: #imageLiteral(resourceName: "app")))
    }
}
