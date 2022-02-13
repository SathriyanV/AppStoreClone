//
//  AppListDetailView.swift
//  Yosana
//
//  Created by Sathriyan on 12/02/22.
//

import SwiftUI

struct AppListDetailView: View {
    var body: some View {
        HStack(spacing : 0){
            Color.gray.opacity(0.5)
                .frame(width: 65, height: 65, alignment: .center)
                .cornerRadius(15)
            
            VStack(alignment: .leading, spacing: 0){
                Text("Fishdom")
                    .font(Font.system(size: 16))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)

                Text("Create your dream aquarium")
                    .font(Font.system(size: 14))
                    .foregroundColor(.gray)
                    .frame(height: 40)
            }
            .padding(.leading)
            .frame(width: UIScreen.main.bounds.width * 0.38, height: 65, alignment: .leading)
            
            VStack{
                Button {
                    
                } label: {
                    Text("get".uppercased())
                        .font(Font.system(size: 14))
                        .bold()
                        .kerning(1)
                }
                .frame(width: UIScreen.main.bounds.width * 0.20, height: 30, alignment: .center)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(25)
                
                Text("In-App Purchases")
                    .font(Font.system(size: 10))
                    .foregroundColor(.gray)
                    .frame(height: 20)
                    .padding(.trailing, 10)
            }
            .padding(.top, 5)
        }
    }
}

struct AppListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppListDetailView()
    }
}
