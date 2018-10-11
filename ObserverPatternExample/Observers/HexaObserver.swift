//
//  HexaObserver.swift
//  ObserverPatternExample
//
//  Created by Yaroslaw Bagriy on 10/11/18.
//  Copyright © 2018 Yaroslaw Bagriy. All rights reserved.
//


class HexaObserver : Observer {
    
    private var subject = Subject()
    var id = Int()
    
    init(subject : Subject, id : Int) {
        self.subject = subject
        self.subject.attachObserver(observer: self)
        self.id = id
    }
    
    func update(){
        print("Hex: \(String(subject.number, radix: 16))")
    }
    
}
