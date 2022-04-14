//
//  RandomuserItemView.swift
//  RandomuserAPI
//
//  Created by 곽희상 on 2022/04/14.
//

import SwiftUI

struct RandomuserItemView: View {
    var body: some View {
        HStack{
            ProfileImgView(imageurl: URL(string:
            "https://randomuser.me/api/portraits/women/37.jpg")!)
            Text("glglglgl")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(2)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .leading).padding(.vertical)
    }
}

struct RandomuserItemView_Previews: PreviewProvider {
    static var previews: some View {
        RandomuserItemView()
    }
}
