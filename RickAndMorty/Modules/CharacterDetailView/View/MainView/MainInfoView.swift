//
//  MainInfoView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct MainInfoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            
            Image("Planet")
                .resizable()
                .cornerRadius(Constant.cornerRadiusOfCell)
                .frame(width: 148, height: 148)
            
            VStack(alignment: .center, spacing: 8) {
                Text("Rick Sanchez")
                    .font(
                    Font.custom("Gilroy", size: 22)
                    .weight(.bold)
                    )
                    .kerning(0.32)
                    .foregroundColor(.white)
                
                Text("Info")
                    .font(
                    Font.custom("Gilroy", size: 16)
                    .weight(.medium)
                    )
                    .foregroundColor(.green)
            }
        }
    }
}

//struct CourseImage: View {
//    
//    let url: URL
//    
//    var body: some View {
//        getImage(from: url)
//            .resizable()
//            .cornerRadius(Constant.cornerRadiusOfCell)
//            .frame(width: 148, height: 148)
//    }
//    
//    private func getImage(from url: URL) -> Image {
//        guard let imageData = try? Data(contentsOf: url) else { return Image(systemName: "xmark.shield") }
//        guard let image = UIImage(data: imageData) else { return Image(systemName: "xmark.shield") }
//        return Image(uiImage: image)
//    }
//}

struct MainInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MainInfoView()
    }
}
