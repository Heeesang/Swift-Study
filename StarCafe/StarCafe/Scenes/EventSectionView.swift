//
//  EventSectionView.swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/04.
//

import SwiftUI

struct EventSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 16){
                ForEach(Event.sample){ event in
                    EventSectionItemView(event: event)
                }
            }.padding(.horizontal, 16.0)
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View{
        VStack{
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit( 1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionView()
    }
}
