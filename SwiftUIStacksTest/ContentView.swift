//
//  ContentView.swift
//  SwiftUIStacksTest
//
//  Created by Hua Son Tung on 09/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple, icon: "star.fill")
                .offset(x: 0, y: 190)
            
            PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: .yellow, icon: "cursorarrow.rays")
            
            PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                .offset(x: 0, y: -210)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PricingView: View {
    
    
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String?
    
    var body: some View {
        VStack{
            
            icon.map( {
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            })
            
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40,weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
