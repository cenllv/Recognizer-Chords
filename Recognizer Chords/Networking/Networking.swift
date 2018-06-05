//
//  Networking.swift
//  Recognizer Chords
//
//  Created by Luciano Schillagi on 4/11/18.
//  Copyright © 2018 luko. All rights reserved.
//

import Foundation
import Alamofire

class Networking: NSObject {

		// networking alamofire de prueba
	
		let alamoRequest = Alamofire.request("https://httpbin.org/get").responseJSON { response in
		print("Request: \(String(describing: response.request))")   // original url request
		print("Response: \(String(describing: response.response))") // http url response
		print("Result: \(response.result)")                         // response serialization result
		
		if let json = response.result.value {
		print("JSON: \(json)") // serialized json response
		
		}
		
		if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
		print("Data: \(utf8Text)") // original server data as UTF8 string
		
		}
	
	}

}

