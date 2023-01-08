//
//  ContentView.swift
//  SampleWeatherApp
//
//  Created by 김인겸 on 2023/01/07.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var Offset: CGFloat = 0
    
    var body: some View {
        ZStack{
            GeometryReader{ geometry in
                Image("cloud")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            .ignoresSafeArea()
            
            ScrollView {
                VStack{
                    Text("개미시")
                        .font(.title)
                        
                    Text("13°")
                        .font(.system(size: 80, weight: .thin))
                    Text("한때 흐림")
                        .font(.title3)
                        .opacity(setOpacity())
                    HStack{
                        Text("최고 : 18°")
                            .font(.title3)
                            .opacity(setOpacity())
                        Text("최저 : 11°")
                            .font(.title3)
                            .opacity(setOpacity())
                    }
                }.offset(y: -Offset + 63)
                    .background(
                        GeometryReader(content: { geometry ->
                            Color in
                            let minY = geometry.frame(in: .global).minY
                            
                            DispatchQueue.main.async {
                                Offset = minY
                            }
                            
                            return Color.clear
                        }))
                
                BlurStackView {
                    Text("오전 12시쯤 청명한 상태가 예상됩니다.")
                } contentView: {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:35){
                            ForecastView(time: "지금", imageName: "cloud.sun", Celcius: 13)
                            ForecastView(time: "오후 10시", imageName: "cloud.sun", Celcius: 13)
                            ForecastView(time: "오후 11시", imageName: "cloud.moon", Celcius: 13)
                            ForecastView(time: "오전 12시", imageName: "moon", Celcius: 13)
                            ForecastView(time: "오전 1시", imageName: "cloud.moon", Celcius: 13)
                            ForecastView(time: "오전 2시", imageName: "cloud.moon", Celcius: 13)
                            ForecastView(time: "오전 3시", imageName: "cloud.moon", Celcius: 13)
                            
                        }
                        
                    }
                    /*
                    HStack{
                        VStack{
                            Text("지금")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                        VStack{
                            Text("오후 10시")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                        VStack{
                            Text("오후 11시")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                        VStack{
                            Text("오전 12시")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                    }
                     */
                }

                
                VStack{
                    HStack{
                        Image(systemName: "calendar")
                        Text("10일간의 일기예보")
                    }
                    Divider()
                    VStack{
                        HStack{
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("13°")
                        }
                        HStack{
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("13°")
                        }
                        HStack{
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("13°")
                        }
                    }
                }
                .padding()
                .background(.red)
                .cornerRadius(13)
            }
        }
        
    }
    func setOpacity() -> CGFloat {
        if Offset < 70 {
            return Offset / 70
        } else {
            return 1
        }
    }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
