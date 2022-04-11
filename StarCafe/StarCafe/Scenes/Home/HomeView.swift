//
//  HomeView.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
                HomeheaderView().padding(.top, 30)
                MenuSuggetionSectionView()
                Spacer(minLength: 32.0)
                EventSectionView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
