//
//  LandmarkDetail.swift
//  Landmarks_class
//
//  Created by jo on 2021/11/18.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    //text로 적어놓았던 거 다 landmark의 변수로 쓰겠다
    
    
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinates)
                .ignoresSafeArea(edges:.top)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack{
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }.padding()
            Spacer()
            
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
        //항상 s 붙은건 배열
        //대문자는 타입
    }
}
