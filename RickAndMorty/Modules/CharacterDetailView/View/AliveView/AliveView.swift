//
//  AliveView.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 18.08.2023.
//

import SwiftUI

struct AliveView: View {
    
    let species: String = "Human"
    let type: String = "None"
    let gender: String = "Male"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            TitleText(text: "Alive")
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    NameText(text: "Species:")
                    Spacer()
                    DescriptionText(text: species)
                }
                
                HStack {
                    NameText(text: "Type:")
                    Spacer()
                    DescriptionText(text: type)
                }
                
                HStack {
                    NameText(text: "Gender:")
                    Spacer()
                    DescriptionText(text: gender)
                }
            }
            .padding([.leading, .trailing], 16)
            .frame(width: 327, height: 124)
            .background(Color(uiColor: Constant.cellBackGroundColor))
            .cornerRadius(Constant.cornerRadiusOfCell)
        }
    }
}

struct AliveView_Previews: PreviewProvider {
    static var previews: some View {
        AliveView()
    }
}
