//
//  main.swift
//  Crawling-Example
//
//  Created by 이전희 on 11/30/23.
//

import Foundation
import SwiftSoup

let url = URL(string: "https://developer.apple.com/news/")!
let html = (try? String(contentsOf: url, encoding: .utf8))!
let doc: Document = try SwiftSoup.parse(html)


let tag = "section"
let tagClass = ".article-content-container"

let articles: Elements = try doc.select(tagClass)

let latestArticle = try! (articles.first()!.html())

let fileManager = FileManager.default
let documentURL = fileManager.urls(for: .desktopDirectory, in: .userDomainMask)[0]
let textPath: URL = documentURL.appendingPathComponent("news.md")


if let data: Data = latestArticle.data(using: String.Encoding.utf8) {
    do {
        try data.write(to: textPath)
    } catch let e {
        print(e.localizedDescription)
    }
}
