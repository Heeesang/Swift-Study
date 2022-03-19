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
                .background(.ultraThinMaterial, in: CustomCorner(corners: bottomOffset < 38 ? .allCorners : [.topLeft, .topRight], radius: 12))
                .zIndex(1)
            VStack{
                
                Divider()
                
                contentView
                    .padding()
                
            }
            .background(.ultraThinMaterial, in: CustomCorner(corners: [.bottomLeft,.bottomRight], radius: 12))
            .offset(y: topOffset >= 120 ? 0 : -(-topOffset + 120))
            .zIndex(0)
            .clipped()
            .opacity(getOpacity())
        }
        .colorScheme(.dark)
        .cornerRadius(12)
        .opacity(getOpacity())
        // Stopping View
        .offset(y: topOffset >= 120 ? 0 : -topOffset + 120)
        .background(
            
            GeometryReader{proxy -> Color in
                
                let minY = proxy.frame(in: .global).minY
                let maxY = proxy.frame(in: .global).maxY
                
                DispatchQueue.main.async {
                    self.topOffset = minY
                    self.bottomOffset = maxY - 120
                }
                
                return Color.clear
            }
        )
        .modifier(CornerModifier(bottomOffset: $bottomOffset))
    }
    
    func getOpacity()->CGFloat{
        
        if bottomOffset < 28{
            
            let progress  = bottomOffset / 28
            
            return progress
        }
        return 1
    }
    
    
    
}

struct CustomStackView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}

struct CornerModifier: ViewModifier {
    
    @Binding var bottomOffset:CGFloat
    
    func body(content: Content) -> some View {
        if bottomOffset < 38{
            content
        }else{
            content
                .cornerRadius(12)
        }
    }
}


