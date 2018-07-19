//
//  Question.swift
//  Quizz
//
//  Created by Juan Garcia on 15/6/18.
//  Copyright © 2018 Juan Garcia. All rights reserved.
//

import Foundation
class Question {
    let question: String
    let answer: Bool
    let image: UIImage
    
    init (text: String, correctAnswer: Bool,image: UIImage) {
        question = text
        answer = correctAnswer
        self.image = image
    }
}
