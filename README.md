Reproduction steps

Attempt to compile this code.

Why is the createRecordRefRepresentation function written this way?

It's an attempt to create a person like you would in an "Add to Address Book" style button.

This code example has a *single* method added to a basic template for a single view application that happens to cause the compiler to crash with a warning seen below


Xcode Version 6.0 (6A215l) on late 2013 rMBP

The function in question is 

    func  createRecordRefRepresentation ()->ABRecordRef {
            let unmanagedPerson:Unmanaged<ABRecordRef> = ABPersonCreate()
            var newPerson:ABRecordRef = unmanagedPerson.takeRetainedValue()
            let didSetFirstName = ABRecordSetValue(newPerson,kABPersonFirstNameProperty,"Mary",nil);
            if(didSetFirstName==false){
                         //return nil
            }
                                                             
                                                                        
            return newPerson
    }

