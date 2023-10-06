//
//  main.swift
//  crawling
//
//  Created by 하수연 on 10/6/23.
//

import Foundation

print("Hello, World!")

class CrawlingManager {
    var url: String? = nil
    var urlString: String
    
    init(){
        self.urlString = ""
    }
    
    init(urlString: String) {
        self.urlString = urlString
    }
    
    func setUrl(url: String) {
        self.url = url
    }
    
    func showUrl(){
        if let url = url{
            print(url)
        }
    }
    
    func returnUrl() -> String? {
        return self.url
    }
    
    func returnUrl2() -> String {
        return self.url!
    }
    
    func returnUrl3() -> String {
        if let url = url {
            return url
        } else {
            return ""
        }
    }
    
    func returnUrl4() -> String {
        guard let url = url else {return ""}
        return url
    }
    
}
