//
//  CharacterImage.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 20.08.2023.
//

import SwiftUI

struct CharacterImage: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .cornerRadius(Constant.cornerRadiusOfCell)
                .frame(width: 148, height: 148)
        } else {
          ProgressView()
            .onAppear {
                fetchData()
            }
        }
    }
    
    func fetchData() {
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            self.data = data
        }.resume()
    }
}
