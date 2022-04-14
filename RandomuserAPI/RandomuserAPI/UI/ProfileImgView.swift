//
//  ProfileImg.swift
//  RandomuserAPI
//
//  Created by 곽희상 on 2022/04/14.
//
 
import SwiftUI
import URLImage

struct ProfileImgView: View {
    var imageurl: URL
    
    var body: some View {
        URLImage(imageurl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 50, height:60)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.green, lineWidth: 2))
        
    }
}

struct ProfileImgView_Previews: PreviewProvider {
    static var previews: some View {
        let url = URL(string: "https://randomuser.me/api/portraits/men/55.jpg")!
        
        ProfileImgView(imageurl: url)
    }
}
