//
//  LandmarkList.swift
//  Landmarks_class
//
//  Created by jo on 2021/11/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){landmark in
                NavigationLink(destination: {
                    LandmarkDetail(landmark: landmark)
                }){LandmarkRow(landmark: landmark)}
                
            }
            .navigationTitle("Landmarks")
        }
        
        
        //landmark 타입이 identifible이면 무조건 id를 가지고 있을 테니 List(landmarks) 이렇게만 생략해서 적어도 된다
        
        //해쉬값말고 구분할 다른 게 있으면! 여기 데이터는 id가 있으니까 이거로 구분을 할거임
        
        //구분시키는 방법은 여러개가 있는데 그 중 그 객체의 고유값으로 보는 게 해쉬블
        //        List(landmarks, id:\.self){
        //            landmark in
        //            LandmarkRow(landmark: landmark)
        //        }
        
        
        //        List{
        //            LandmarkRow(landmark: landmarks[0])
        //            LandmarkRow(landmark: landmarks[1])
        //        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
