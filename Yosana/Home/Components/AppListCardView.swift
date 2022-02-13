//
//  AppListCardView.swift
//  Yosana
//
//  Created by Sathriyan on 12/02/22.
//

import SwiftUI

struct AppListCardView: View {
    
    var count = [1,2,3,4]
    
    var body: some View {
        VStack(alignment : .leading, spacing: 5){
            Text("our favourites".uppercased())
                .font(Font.system(size: 20))
                .foregroundColor(.gray)
                .fontWeight(.semibold)
                .padding(.top)
//
            Text("What we're playing now")
                .bold()
                .font(Font.system(size: UIScreen.main.bounds.width * 0.085))
                .frame(width : UIScreen.main.bounds.width * 0.48)
                .padding(.bottom, 25)
            
            ForEach(count, id: \.self) { val in
                VStack {
                    AppListDetailView()
                        .padding(.vertical, 8)
                    if val != 4 {
                        Color.gray.opacity(0.5)
                            .frame(width: UIScreen.main.bounds.width * 0.57, height: 0.85)
                            .padding(.leading, UIScreen.main.bounds.width * 0.16)
                    }
                }
            }
        }
        .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .leading)
        .padding(.leading, 20)
        .padding(.top, 10)
        .padding(.bottom, 20)
    }
}

struct AppListCardView_Previews: PreviewProvider {
    static var previews: some View {
        AppListCardView()
    }
}
