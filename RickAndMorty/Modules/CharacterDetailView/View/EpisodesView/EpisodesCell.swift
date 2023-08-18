//
//  EpisodesCell.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct EpisodesCell: View {
    
    let name: String = "Pilot"
    let date: String = "Data"
    let episode: String = "Episode"
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(name)
                .font(
                    Font.custom("Gilroy", size: 17)
                        .weight(.semibold)
                )
                .foregroundColor(.white)
            
            HStack {
                Text(episode)
                    .font(
                        Font.custom("Gilroy", size: 13)
                            .weight(.medium)
                    )
                    .foregroundColor(.green)
                
                Spacer()
                
                Text(date)
                    .font(
                        Font.custom("Gilroy", size: 12)
                            .weight(.medium)
                    )
                    .foregroundColor(.gray)
            }
        }
        .padding([.leading, .trailing], 16)
        .frame(width: 327, height: 80)
        .background(Color(uiColor: Constant.cellBackGroundColor))
        .cornerRadius(Constant.cornerRadiusOfCell)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesCell()
    }
}
