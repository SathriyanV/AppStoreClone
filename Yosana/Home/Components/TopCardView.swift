//
//  TopCardView.swift
//  Yosana
//
//  Created by Sathriyan on 12/02/22.
//

import SwiftUI

struct TopCardView: View {
    
    var title : String
    var heading : String
    var description : String
    
    var body: some View {
        VStack{
            Color.gray.opacity(0.5)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.35)
            
            VStack(alignment : .leading, spacing: 5){
                Text(title.uppercased())
                    .font(Font.system(size: 20))
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text(heading)
                    .bold()
                    .font(Font.system(size: UIScreen.main.bounds.width * 0.08))
                Text(description)
                    .font(Font.system(size: 20))
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                    .frame(width: UIScreen.main.bounds.width * 0.75, alignment: .leading)
            }
        }
    }
}

struct TopCardView_Previews: PreviewProvider {
    static var previews: some View {
        TopCardView(title: "apple arcade", heading: "3 tips for Wonderbox creators", description: "Make your own adventure even more awesome")
    }
}
