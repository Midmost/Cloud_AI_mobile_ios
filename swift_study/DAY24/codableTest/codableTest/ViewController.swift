//
//  ViewController.swift
//  codableTest
//
//  Created by jo on 2021/11/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func actionDecoding(_ sender: Any) {
        let jsonString = """
        {
            "name": "홍길동",
            "age":18,
        
        }
        """
        //이런식으로 그냥 딕셔너리를 사요했었는데 이거를
        //모델로 만들어서 사용해보자
        
        guard let data = jsonString.data(using: .utf8)
        else {return}
        let decoder = JSONDecoder()
        if let person1 = try?
            decoder.decode(Person.self, from: data)
        {
            print(person1.name)
            print(person1.age)
        }
        //decode() parameter는 type의 type이 들어가는거임 나중에 다시 찾기
    }
    
    
    //json을 보낸다고 하면 encodable
    @IBAction func actionEncoding(_ sender: Any) {
        let person = Person(name: "Jobs", age: 65)
        let encoder = JSONEncoder()
        
        guard let jsonData = try? encoder.encode(person),
              let jsonString = String(data: jsonData, encoding: .utf8)
        else{return}
        print(jsonString)
    }
    
    
    @IBAction func actionmulti(_ sender: Any) {
        
        let jsonString = """
        {
            "count":2,
            "data":[
                {
                    "name": "홍길동",
                    "age":18,
                },
                {
                    "name": "Jobs",
                    "age":65,
                }]
        }
        """
        guard let jsonData = jsonString.data(using: .utf8)
        else {return}
        let decoder = JSONDecoder()
        let sample = try?
            decoder.decode(Sample.self, from: jsonData)
        
            if let sample = sample{
                print(sample.count)
                let persons = sample.persons
                print(persons[0].name)
                print(persons[0].age)
                print(persons[1].name)
                print(persons[1].age)
            }
        
    }
    
    
    
struct Sample:Codable {
    var count:Int
    var persons:[Person]
        
        //enum만드는 CodingKeys라고 고정되어 있고
        //Codingkey라는 프로토콜을 꼭 적용시켜줘야해
    //row value의 타입 String
    //적용시켜줘야 할 프로토콜 Codingkey
    //같으면 생략가능
    enum CodingKeys:String, CodingKey{
        case count
        case persons = "data"
    }
    
    //decoding 될 때 인스턴스가 만들어지기 때문에 호출될 생성자
    init(from decoder: Decoder)throws{
        let values = try? decoder.container(keyedBy: CodingKeys.self)
        print(values)
        count = (try? values!.decode(Int.self, forKey:.count)) ?? 0
        persons = (try? values!.decode([Person].self, forKey:.persons)) ?? []
    }
    
    
}
    

struct Person:Codable {
    var name:String
    var age: Int
        //이런 데이터가 만약 list로 넘어온다.
        //책검색같은 경우는 그냥 딕셔너리로 썼는데
        //사실 딕셔너리를 모델로 만들어서 불러와서 작업하는 게 더 편하다고 하낟.
    }

}

