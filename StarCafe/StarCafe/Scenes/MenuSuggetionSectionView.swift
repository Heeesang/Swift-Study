//
//  MenuSuggetionSectionView.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/04.
//

import SwiftUI

struct MenuSuggetionSectionView: View {
    var body: some View {
        VStack(){
            Text("\(User.shared.username)님을 위한 추천!")
                .font(.headline)
                .padding(.horizontal, 16.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal,showsIndicators: false){
                LazyHStack{
                    ForEach(CoffeeMenu.sample){menu in
                        MenuSuggestionItemView(coffemenu: menu)
                    }
            }
                .padding(.horizontal, 16.0)
        }
    }
}

struct MenuSuggestionItemView: View {
    
    let coffemenu : CoffeeMenu
    
    var body: some View{
        VStack{
            coffemenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            
            Text(coffemenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggetionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggetionSectionView()
    }
}
}
