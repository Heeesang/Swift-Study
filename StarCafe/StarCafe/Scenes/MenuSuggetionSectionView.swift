//
//  MenuSuggetionSectionView.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/04.
//

import SwiftUI

struct MenuSuggetionSectionView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHStack{
                ForEach(CoffeeMenu.sample){menu in
                    MenuSuggestionItemView(coffemenu: menu)
                }
            }
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
