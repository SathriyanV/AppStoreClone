//
//  SingleAppCardView.swift
//  Yosana
//
//  Created by Sathriyan on 12/02/22.
//

import SwiftUI

struct SingleAppCardView: View {
    var body: some View {
        VStack{
            Color.gray.opacity(0.5)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.4)
            
            HStack(spacing : 0){
                Color.gray.opacity(0.5)
                    .frame(width: 65, height: 65, alignment: .center)
                    .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Fishdom")
                        .font(Font.system(size: 16))
                        .foregroundColor(.black)
                        .fontWeight(.semibold)

                    Text("Share the moment")
                        .font(Font.system(size: 14))
                        .foregroundColor(.gray)
                        .frame(maxHeight: 20)
                }
                .padding(.leading)
                .frame(width: UIScreen.main.bounds.width * 0.42, height: 65, alignment: .leading)
                
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
                    
                }
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 15)
        }
        .padding(.bottom, 5)
    }
}

struct SingleAppCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleAppCardView()
    }
}
