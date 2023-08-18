//
//  OriginView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct OriginView: View {
    
    let planetImage: String = "Planet"
    let earth: String = "Earth"
    let planet: String = "Planet"
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            TitleText(text: "Origin")
            
            HStack(spacing: 16) {
                
                Image(planetImage)
                    .resizable()
                    .cornerRadius(Constant.cornerRadiusOfImageCell)
                    .frame(width: 64, height:64)
                
                VStack(spacing: 8) {
                    
                    Text(earth)
                        .font(
                            Font.custom("Gilroy", size: 17)
                                .weight(.semibold)
                        )
                        .foregroundColor(.white)
                    
                    Text(planet)
                        .font(
                            Font.custom("Gilroy", size: 13)
                                .weight(.medium)
                        )
                        .foregroundColor(.green)
                }
                Spacer()
            }
            .padding(.leading, 16)
            .frame(width: 327, height: 80)
            .background(Color(uiColor: Constant.cellBackGroundColor))
            .cornerRadius(Constant.cornerRadiusOfCell)
        }
    }
}

struct OriginView_Previews: PreviewProvider {
    static var previews: some View {
        OriginView()
    }
}
