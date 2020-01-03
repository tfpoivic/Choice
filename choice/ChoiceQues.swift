//
//  choiceQues.swift
//  choice
//
//  Created by 莊宇軒 on 2020/1/3.
//  Copyright © 2020 kffatkalo. All rights reserved.
//

import Foundation

struct ChoiceQues {
    let question: String
    let choice: [String]
    let answer: String
    init(question: String, choice: [String], answer: String) {
        self.question = question
        self.choice = choice
        self.answer = answer
    }
}
