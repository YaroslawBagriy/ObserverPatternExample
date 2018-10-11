//
//  Observer.swift
//  ObserverPatternExample
//
//  Created by Yaroslaw Bagriy on 10/11/18.
//  Copyright © 2018 Yaroslaw Bagriy. All rights reserved.
//

protocol Observer {
    var id : Int{ get }
    
    func update()
}
