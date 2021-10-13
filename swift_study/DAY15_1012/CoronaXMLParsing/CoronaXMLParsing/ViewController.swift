//
//  ViewController.swift
//  CoronaXMLParsing
//
//  Created by jo on 2021/10/12.
//

import UIKit

class ViewController: UIViewController,XMLParserDelegate{
    
    
    let serviceKey = "avhWh0v236HYzmqSKOMsKscVYUCKOsTLXYutDoS0ZkvyhMHBZUxxrddVdVIoP37z4gQKwJYHl7T8rm53Y5SvSA%3D%3D"
    
    
    //var hospitals:[[String:Any]]?
    var hospitals:[[String:Any]] = []
    var item:[String:Any] = [:]
    var key:String?
    
    
    @IBAction func actStartParsing(_ sender: Any) {

        let strUrl = "https://api.odcloud.kr/api/apnmOrg/v1/list?serviceKey=\(serviceKey)&returnType=XML"
        //&cond[orgZipaddr::LIKE]=금천구
        guard let url = URL(string: strUrl) else {return}
        
        //XML을 parser로 쓸거야
        let parser = XMLParser(contentsOf: url)
        parser?.delegate = self
        parser?.parse() //얘는 url 연결해서 데이터 받아오는 애야
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func parserDidStartDocument(_ parser: XMLParser) { //openAPI 16p봐,
        //시작하라, //contacts 만났을 때 어레이를 준비
    }
    
    //didstartelement라고 치면 나옴
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "data"{
           hospitals.removeAll() //json과 달리 추가하는 애라 원래 있던 거를 지워줘야해
        } else if elementName == "item"{
            item = [:]
        } else if elementName == "col"{
            key = attributeDict["name"]
        }
    }
    
    //foundcharacters라고 치면 나옴 얘가 key의 value값을 알수있음
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if let key = self.key{
            item[key] = string
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item"{
            hospitals.append(item)
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        //데이터를 다 받아왔으니 프린트로 파싱이 잘 되었는지 알아보자
        print(hospitals)
    }
    // contact만나면 딕셔너리 만들고 <Email>midmost44@gmail.com</Email> 이면 Email: Key, 내메일: value
//끝나고 만든 어레이에 append
}
