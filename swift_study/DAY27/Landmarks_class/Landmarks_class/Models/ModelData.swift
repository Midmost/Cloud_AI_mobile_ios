//
//  ModelData.swift
//  Landmarks_class
//
//  Created by jo on 2021/11/18.
//

import Foundation

var landmarks:[Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName:String) -> T {
    let data : Data
    //data는 LandmarkData.json에 들어있는데 이 안의 정보들을 가져올 건데
    //Package 안에 Bundle이 있고 그 안에 이 데이터가 있어.
    //그래서 이 Bundle의 위치 경로를 가져와야 해.(왜그러냐면 sendbox 때문에 실행할 때 마다 계속 위치가 바뀌거든)
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else{
        fatalError("Couldn't find\(fileName)in main Bundle.")
    }//enxtension 확장자의 의미로 쓰임 파일의 확장자 그대로 가져올거라서 따로 지정 안 할 경우 nil
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(fileName) from main Bundle: \n\(error)") // \n 은 줄바꿈
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse\(fileName) as \(T.self):\n\(error)")
    }
    
    
}
