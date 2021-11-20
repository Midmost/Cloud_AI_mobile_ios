//
//  CircleImage.swift
//  Landmarks_class
//
//  Created by jo on 2021/11/18.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    //landmark를 가져와도 되지만 image를 가져오기
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarks[0].image)
    }
}
