//
//  MapView.swift
//  Landmarks_class
//
//  Created by jo on 2021/11/18.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    
    @State private var region = MKCoordinateRegion()
    //span이란 건 한 페이지에 위도, 경도를 얼마나 보여줄 것이냐 란 뜻
    
    //MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 00.2, longitudeDelta: 0.2))
    
    
    var body: some View {
        Map(coordinateRegion: $region)
        
            //지도를 보여줄 때
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_
        coordinate: CLLocationCoordinate2D){
            region = MKCoordinateRegion(
                center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarks[0].locationCoordinates)
    }
}
