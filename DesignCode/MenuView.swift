//
//  MenuView.swift
//  DesignCode
//
//  Created by Martin Chibwe on 5/28/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:16) {
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
            }
            .frame(maxWidth:.infinity)
            .frame(height:300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.6106415901, green: 0.9803921569, blue: 0.9574533385, alpha: 0.656902389))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal,30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:60,height: 60))
                    .clipShape(Circle())
        }
        .padding(.bottom,30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    var title: String
    var icon: String
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
