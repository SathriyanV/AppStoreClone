//
//  BottomSelectorCrad.swift
//  Yosana
//
//  Created by Sathriyan on 13/02/22.
//

import SwiftUI

struct BottomSelectorCrad: View {
    
    var textValue : String
    
    var body: some View {
        ZStack{
            Button {
                
            } label: {
                Text(textValue)
                    .fontWeight(.semibold)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.06)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(10)

        }
    }
}

struct BottomSelectorCrad_Previews: PreviewProvider {
    static var previews: some View {
        BottomSelectorCrad(textValue: "Redeem")
    }
}
