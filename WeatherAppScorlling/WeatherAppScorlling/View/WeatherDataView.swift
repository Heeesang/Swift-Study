//
//  WeatherDataView.swift
//  WeatherAppScorlling
//
//  Created by 곽희상 on 2022/03/20.
//

import SwiftUI

struct WeatherDataView: View {
    var body: some View {
        
        VStack(spacing: 8){
            
            CustomStackView{
                
                Label {
                    
                    Text("Air Quality")
                    
                }icon:{
                    
                    Image(systemName: "circle.hexagongrid.fill")
                }
                
            }contentView: {
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("143 - Moderately Polluted")
                        .font(.title3.bold())
                    
                    Text(" infections in the airways, such as croup, bronchitis, pneumonia, COVID-19, the flu and even a cold.")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.white)
            }
            
            HStack{
                
                CustomStackView{
                
                    Label {
                        
                        Text("UV Index")
                        
                    }icon : {
                        Image(systemName: "sun.min")
                    }
                    
                }contentView: {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("0")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("Low")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
                }
                CustomStackView{
                    Label {
                        
                        Text("Rainfall")
                        
                    }icon : {
                        Image(systemName: "drop.fill")
                    }
                    
                }contentView: {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("0 mm")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("in last 24 hours")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .leading)
                }
            }
            .frame(maxHeight: .infinity)
            
            CustomStackView{
                
                Label{
                    
                    Text("10-Day Forecast")
                    
                }icon:{
                    Image(systemName: "calender")
                }
                
            }contentView: {
                
                VStack(alignment: .leading, spacing: 10){
                        
                    ForEach(forecast){cast in
                        
                        VStack {
                            HStack(spacing: 15){
                                
                                Text(cast.day)
                                    .font(.title3.bold())
                                    .foregroundStyle(.white)
                                    .frame(width: 60,alignment: .leading)
                                
                                Image(systemName: cast.image)
                                    .font(.title3)
                                    .symbolVariant(.fill)
                                    .symbolRenderingMode(.palette)
                                    .foregroundStyle(.yellow,.white)
                                    .frame(width: 30)
                                
                                Text("\(Int(cast.farenheit - 8))")
                                    .font(.title3.bold())
                                    .foregroundStyle(.secondary)
                                    .foregroundColor(.white)
                                
                                ZStack(alignment: .leading) {
                                    
                                    Capsule()
                                        .fill(.tertiary)
                                        .foregroundStyle(.white)
                                        
                                    GeometryReader{proxy in
                                        
                                        Capsule()
                                            .fill(.linearGradient(.init(colors: [.orange,.red]), startPoint: .leading, endPoint: .trailing))
                                            .frame(width: (cast.farenheit / 140) * proxy.size.width)
                                        }
                                
                                }
                                .frame(height: 4)
                                
                                Text("\(Int(cast.farenheit))")
                                    .font(.title3.bold())
                                    .foregroundColor(.white)
                            }
                        
                            Divider()
                        
                        }
                        .padding(.vertical, 8)
                        
                    }
                }
                
            }
        }
    }
}

struct WeatherDataView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
