//
//  Subject.swift
//  ObserverPatternExample
//
//  Created by Yaroslaw Bagriy on 10/11/18.
//  Copyright © 2018 Yaroslaw Bagriy. All rights reserved.
//

class Subject {
    
    private var observerArray = [Observer]()
    private var _number = Int()
    
    var number : Int {
        set {
            _number = newValue
            notify()
        }
        get {
            return _number
        }
    }
    
    func attachObserver(observer : Observer){
        observerArray.append(observer)
    }
    
    private func notify(){
        for observer in observerArray {
            observer.update()
        }
    }
    
    func removeObserver(observer : Observer) {
        observerArray = observerArray.filter{ $0.id != observer.id }
    }
    
}
