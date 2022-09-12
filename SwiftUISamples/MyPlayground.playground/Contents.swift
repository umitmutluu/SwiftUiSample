import UIKit

var myDictionary :Dictionary<String, String> = ["key1":"value1","key2":"value2","key3":"value3"]

func functionSample(key: String){
    if let result = myDictionary[key]{
        print("Key is equal to :\(key) and value is equal to :\(result) ")
    }else {
        print("Key:\(key) doesn't exist.")
    }
    
    
}
