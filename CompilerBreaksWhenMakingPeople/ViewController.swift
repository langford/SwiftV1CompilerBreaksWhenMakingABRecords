//
//  ViewController.swift
//  CompilerBreaksWhenMakingPeople
//
//  Created by Michael Langford on 6/14/14.
//  Copyright (c) 2014 Rowdy Labs LLC. All rights reserved.
//

import UIKit
import AddressBook

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func  createRecordRefRepresentation ()->ABRecordRef {
        let unmanagedPerson:Unmanaged<ABRecordRef> = ABPersonCreate()
        var newPerson:ABRecordRef = unmanagedPerson.takeRetainedValue()
        let didSetFirstName = ABRecordSetValue(newPerson,kABPersonFirstNameProperty,"Mary",nil);
        if(didSetFirstName==false){
            //return nil
        }
        
        
        return newPerson
    }

}

