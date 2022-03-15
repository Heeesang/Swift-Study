//
//  Home.swift
//  WeatherAppScorlling
//
//  Created by 곽희상 on 2022/03/14.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        ZStack{
            
            GeometryReader{proxy in
                
                Image("sky")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                
            }
            .ignoresSafeArea()
            .overlay(.ultraThinMaterial)
        
            ScrollView(.vertical, showsIndicators: false){
                
                VStack{
                    
                    //Weather Data ...
                    VStack(alignment: .center, spacing: 5){
                        
                        Text("비아동")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        Text("98°")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        Text("Cloudy")
                            .foregroundStyle(.secondary)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            
                        Text("H: 103° L: 105°")
                            .foregroundStyle(.primary)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                    }
                    
                    //Custom Data View
                    VStack(spacing: 8){
                        
                        //Custom Stack
                        CustomStackView{
                            
                            Label{
                                
                                Text("Hourly Forecast")
                                
                            }icon:{
                                Image(systemName: "clock")
                            }
                            
                        } contentView: {
                            ScrollView(.horizontal, showsIndicators: false){
                                
                                HStack(spacing: 15){
                                    
                                    ForecastView(time: "12 PM",celcius: 94, image: "sun.min")
                                    ForecastView(time: "1 PM",celcius: 95, image: "sun.min")
                                    ForecastView(time: "2 PM",celcius: 96, image: "sun.min")
                                    ForecastView(time: "3 PM",celcius: 97, image: "cloud.sun")
                                    ForecastView(time: "4 PM",celcius: 98, image: "sun.haze")
                                    
                                }
                                
                            }
                        }
                    
                    }
                    
                }
                .padding(.top,25)
                .padding([.horizontal, .bottom])
            }
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
 

struct ForecastView: View {
    var time:String
    var celcius:CGFloat
    var image: String
    
    
    var body: some View {
        VStack(spacing: 15){
            Text(time)
                .font(.callout.bold())
                .foregroundColor(.white)
            
            Image(systemName: image)
                .font(.title2)
            //MultiColor..
                .symbolVariant(.fill)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.yellow, .white)
                .frame(height: 30)
            
            Text("\(Int(celcius))°")
                .font(.callout.bold())
                .foregroundColor(.white)
            
        }
        .padding(.horizontal,10)
    }
}
