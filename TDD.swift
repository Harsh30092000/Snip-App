//
//  TDD.swift
//  Snip App
//
//  Created by cloud on 20/01/22.
//

import UIKit

struct SortedSet{
    var array:[Int] = []
    
    func isExist(element:Int)->Bool{
        return array.contains(element)
    }
    
    mutating func addElement(element:Int){
        if(!isExist(element: element)) {
            array.append(element)
            array.sort()
        }
    }
    
    mutating func deleteElement(element:Int){
        if(isExist(element: element)) {
            if let index = array.firstIndex(of: element){
            array.remove(at: index)
            }
        }
    }
    
    mutating func deleteAll() {
        array.removeAll()
    }
    
    func max() -> Int? {
        return array.last ?? nil
    }
    func min() ->Int? {
        return array.first ?? nil
    }
}
