//
//  EpisodesCell.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct EpisodesCell: View {
    
    var name: String?
    var episode: String?
    var date: String?
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(name ?? "None")
                .font(
                    Font.custom("Gilroy", size: 17)
                        .weight(.semibold)
                )
                .foregroundColor(.white)
            HStack {
                Text(episode?
                    .replacingOccurrences(of: "S0", with: "Season:")
                    .replacingOccurrences(of: "E0+", with: ", Episode:", options: .regularExpression)
                    .replacingOccurrences(of: "E1", with: ", Episode: 1", options: .regularExpression)
                    ?? "Season: None, Episode: None")
                    .font(
                        Font.custom("Gilroy", size: 13)
                            .weight(.medium)
                    )
                    .foregroundColor(.green)
                Spacer()
                Text(date ?? "None")
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
