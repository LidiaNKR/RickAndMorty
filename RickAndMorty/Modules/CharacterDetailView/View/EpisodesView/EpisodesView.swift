//
//  EpisodesView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct EpisodesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            TitleText(text: "Episodes")
            
            ForEach(0..<5) { index in
                EpisodesCell()
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(width: 327)
        .frame(maxWidth: .infinity)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesView()
    }
}
