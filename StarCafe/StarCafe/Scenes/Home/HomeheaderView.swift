//
//  HomeheaderView.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/11.
//

import SwiftUI

struct HomeheaderView: View {
    var body: some View {
        VStack(spacing: 16.0){
            HStack(alignment: .top){
                Text("""
                     \(User.shared.username)님
                     커피 한 잔 할래요?
                     """)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.circlepath")
                })
                .frame(alignment: .top)
            }
            HStack{
                Button(action: {}){
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                }
                Button(action: {}){
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                }
                Spacer()
                Button(action: {}){
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16.0)
    }
}

struct HomeheaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeheaderView()
        }
    }
}
