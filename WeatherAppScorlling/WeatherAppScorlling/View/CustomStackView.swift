//
//  CustomStackView.swift
//  WeatherAppScorlling
//
//  Created by 곽희상 on 2022/03/14.
//

import SwiftUI

struct CustomStackView<Title: View, Content: View>: View {
    
    var titleView: Title
    var contentView: Content
    
    //Offset...
    @State var topOffset: CGFloat = 0
    @State var bottomOffset: CGFloat = 0
    
    init(@ViewBuilder titleView: @escaping ()->Title, @ViewBuilder contentView: @escaping ()-> Content){
    
        self.contentView = contentView()
        self.titleView = titleView()
        
    }
    var body: some View {
        
        VStack(spacing: 0){
            titleView
                .font(.callout)
                .lineLimit(1)
                .frame(height: 38)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding(.leading)
                .background(.ultraThinMaterial, in: CustomCorner(corners: [.topLeft, .topRight], radius: 12))
            VStack{
                
                Divider()
                
                contentView
                    .padding()
                
            }
            .background(.ultraThinMaterial, in: CustomCorner(corners: [.bottomLeft,.bottomRight], radius: 12))

        }
        .colorScheme(.dark)
        .cornerRadius(12)
        // Stopping View
        .offset(y: topOffset >= 120 ? 0 : -topOffset + 120)
        .background(
            
            GeometryReader{proxy -> Color in
                
                let minY = proxy.frame(in: .global).minY
                
                DispatchQueue.main.async {
                    self.topOffset = minY
                }
                
                return Color.clear
            }
            
        )
        
    }
}

struct CustomStackView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}


