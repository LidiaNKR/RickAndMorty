//
//  NavigationBar.swift
//  RickAndMorty
//
//  Created by Лидия Ладанюк on 19.08.2023.
//

import SwiftUI

struct NavigationBar: View {
    
    var navigationController: UINavigationController?
    
    var body: some View {
        HStack {
            Button {
                navigationController?.popViewController(animated: true)
                navigationController?.setNavigationBarHidden(false, animated: true)
            } label: {
                Image("Back")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            Spacer()
        }
        .padding(.leading, 24)
    }
}
