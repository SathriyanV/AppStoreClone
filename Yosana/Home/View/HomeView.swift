//
//  ContentView.swift
//  Yosana
//
//  Created by Sathriyan on 12/02/22.
//

import SwiftUI

struct HomeView: View {
    
    var cardCount = [1,2]
    
    var textValue = ["Redeem", "Send Gift", "Add Funds to Apple ID"]
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators : false) {
                VStack(alignment : .center){
                    HStack(alignment: .bottom){
                        headerText
                        Spacer()
                        imageButton
                    }
                    .padding(.horizontal, 20)
                    
                    TopCardView(title: "apple arcade", heading: "3 tips for Wonderbox creators", description: "Make your own adventure even more awesome")
                        .background(Color.white)
                        .cornerRadius(UIScreen.main.bounds.height * 0.02)
                        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 5)
                        .padding(.bottom, 25)
                    
                    AppListCardView()
                        .background(Color.white)
                        .cornerRadius(UIScreen.main.bounds.height * 0.02)
                        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 5)
                        .padding(.bottom, 25)
                        .padding(.horizontal, 20)
                    
                    ForEach(cardCount, id: \.self) { _ in
                        SingleAppCardView()
                            .background(Color.white)
                            .cornerRadius(UIScreen.main.bounds.height * 0.02)
                            .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 5)
                            .padding(.bottom, 25)
                    }
                    
                    TopCardView(title: "Behind the scenes", heading: "Be who you are", description: "How Toca Life strives to help all kids see themselves in its games.")
                        .background(Color.white)
                        .cornerRadius(UIScreen.main.bounds.height * 0.02)
                        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 5)
                        .padding(.bottom, 25)
                }
                .padding(.top, UIScreen.main.bounds.height * 0.085)
                .padding(.bottom)
                .background(Color.gray.opacity(0.05))
                
                VStack {
                    ForEach(textValue, id: \.self){value in
                        BottomSelectorCrad(textValue: value)
                            .padding(.bottom, 5)
                    }
                }
                .frame(maxWidth : UIScreen.main.bounds.width, maxHeight: .infinity, alignment: .top)
                .padding(.vertical, 20)
                
                VStack(alignment : .leading){
                    Color.gray.opacity(0.5)
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: 0.85)
                    
                    Button {
                        
                    } label: {
                        Text("Terms & Conditions")
                                .fontWeight(.semibold)
                                .frame(width: UIScreen.main.bounds.width * 0.5, alignment: .leading)
                                .padding(.top, 10)
                                .padding(.bottom, 50)
                    }
                    .foregroundColor(.gray.opacity(0.7))
                }
            }
            .padding(.bottom, UIScreen.main.bounds.height * 0.1)
            .frame(maxWidth : UIScreen.main.bounds.width, maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    private var headerText : some View{
        VStack(alignment : .leading,spacing : 5){
            Text("Sunday 13 february".uppercased())
            Text("Today")
                .bold()
                .font(Font.system(size: 40))
        }
    }
    
    private var imageButton : some View {
        Button {
            
        } label: {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 45, height: 45, alignment: .trailing)
                .foregroundColor(.blue)
        }
    }
}
